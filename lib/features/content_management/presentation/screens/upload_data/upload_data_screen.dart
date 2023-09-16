import '../../../../../core/constants/export.dart';
import '../../bloc/content_management/content_management_bloc.dart';
import '../../widgets/custom_upload_media_bottom_sheet.dart';

class UploadDataScreen extends StatefulWidget {
  const UploadDataScreen({super.key, required this.args});

  final UploadDataScreenArgs args;

  @override
  State<UploadDataScreen> createState() => _UploadDataScreenState();
}

class _UploadDataScreenState extends State<UploadDataScreen> {
  late final TextEditingController _textController;
  final _uploadDataFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContentManagementBloc, ContentManagementState>(
      listener: (context, state) =>
          _contentManagementBlocListener(state, context),
      child: Scaffold(
        appBar: buildCustomAppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.w * ScreenPercentage.screenSize_4,
                vertical: context.h * ScreenPercentage.screenSize_2),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.args.uploadDataType !=
                      UploadDataType.imagesAndPdfs)
                    _buildTextFormField(),
                  if (widget.args.uploadDataType != UploadDataType.text)
                    SizedBox(height: context.h * ScreenPercentage.screenSize_3),
                  Flexible(child: _buildImagesPreview()),
                  Flexible(child: _buildPdfsPreview()),
                  if (widget.args.uploadDataType != UploadDataType.text)
                    _buildUploadFilesButton(context),
                  SizedBox(height: context.h * ScreenPercentage.screenSize_3),
                  _buildCustomToggleButton(widget.args.uploadDataType),
                  SizedBox(
                    height: context.h * ScreenPercentage.screenSize_4,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCustomToggleButton(UploadDataType uploadDataType) {
    return BlocBuilder<ContentManagementBloc, ContentManagementState>(
      builder: (context, state) {
        return ToggleCustomButton(
            requestStatus: state.requestStatus,
            btnText: StringsResource.uploadData,
            onPressed: () {
              context.unFocusKeyboard();
              if (uploadDataType == UploadDataType.imagesAndPdfs) {
                context
                    .read<ContentManagementBloc>()
                    .add(const OnUploadImagesAndPdfs());
              } else {
                if (_uploadDataFormKey.currentState?.validate() ?? true) {
                  if (uploadDataType == UploadDataType.text) {
                    context
                        .read<ContentManagementBloc>()
                        .add(OnUploadText(text: _textController.text.trim()));
                  }
                  if (uploadDataType == UploadDataType.textAndImages) {
                    context.read<ContentManagementBloc>().add(
                        OnUploadTextAndImage(
                            text: _textController.text.trim()));
                  }
                  if (uploadDataType == UploadDataType.textAndPdfs) {
                    context.read<ContentManagementBloc>().add(
                        OnUploadTextAndPdfs(text: _textController.text.trim()));
                  }
                  if (uploadDataType == UploadDataType.textImagesAndPdfs) {
                    context.read<ContentManagementBloc>().add(
                        OnUploadTextImagesAndPdfs(
                            text: _textController.text.trim()));
                  }
                }
              }
            });
      },
    );
  }

  Row _buildUploadFilesButton(BuildContext context) {
    return Row(
      children: [
        if (widget.args.uploadDataType != UploadDataType.textAndPdfs)
          Expanded(
            child: CustomButton(
                btnText: StringsResource.images,
                onPressed: () {
                  context.unFocusKeyboard();
                  context
                      .read<ContentManagementBloc>()
                      .add(const OnPickFiles(mediaType: MediaType.gallery));
                }),
          ),
        SizedBox(width: context.w * ScreenPercentage.screenSize_2),
        if (widget.args.uploadDataType != UploadDataType.textAndImages)
          Expanded(
            child: CustomButton(
                btnText: StringsResource.pdfs,
                onPressed: () {
                  context.unFocusKeyboard();
                  context.read<ContentManagementBloc>().add(const OnPickFiles(
                      mediaType: MediaType.gallery,
                      isPickImages: false,
                      fileType: FileType.custom,
                      allowedExtension: ['pdf']));
                }),
          ),
      ],
    );
  }

  Form _buildTextFormField() {
    return Form(
      key: _uploadDataFormKey,
      child: CustomTextFormField(
        controller: _textController,
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        minLines: widget.args.uploadDataType == UploadDataType.text
            ? Constants.textFieldMinLines_10
            : Constants.textFieldMinLines_5,
        maxLines: Constants.textFieldMaxLines,
        validator: (text) => Validation.validText(text),
      ),
    );
  }

  Widget _buildPdfsPreview() {
    return BlocBuilder<ContentManagementBloc, ContentManagementState>(
      builder: (context, state) {
        return state.pickedPdfs.isNotEmpty
            ? AutoHeightGridView(
                itemCount: state.pickedPdfs.length,
                crossAxisCount: 4,
                shrinkWrap: true,
                builder: (context, index) {
                  return Card(
                    child: SvgPicture.asset(ImagesResource.pdf,
                        fit: BoxFit.scaleDown,
                        height: context.h * ScreenPercentage.screenSize_10),
                  );
                },
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _buildImagesPreview() {
    return BlocBuilder<ContentManagementBloc, ContentManagementState>(
      builder: (context, state) => state.pickedImages.isNotEmpty
          ? Column(
              children: [
                AutoHeightGridView(
                  itemCount: state.pickedImages.length,
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  builder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              context.w * ScreenPercentage.screenSize_2),
                          border:
                              Border.all(color: ColorsResource.primaryColor)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            context.w * ScreenPercentage.screenSize_2),
                        child: Image.file(
                          File(state.pickedImages[index].path),
                          height: context.h * ScreenPercentage.screenSize_10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }

  Future<void> _contentManagementBlocListener(
      ContentManagementState state, BuildContext context) async {
    final requestStatus = state.requestStatus;
    if (requestStatus is RequestStatusSuccess) {
      Navigator.pop(context);
    } else if (requestStatus is RequestStatusFailure) {
      Fluttertoast.showToast(
          msg: requestStatus.error.toString(), gravity: ToastGravity.BOTTOM);
    } else if (state.storagePermission == false ||
        state.cameraPermission == false) {
      await openAppSettings().then((value) {
        if (value == true) {
          context.read<ContentManagementBloc>().add(
              const OnUpdatePermissionStatus(
                  storagePermission: true, cameraPermission: true));
        }
      });
    } else {
      const SizedBox.shrink();
    }
  }

  CustomAppBar buildCustomAppBar() {
    return CustomAppBar(
      title: widget.args.uploadDataType == UploadDataType.text
          ? StringsResource.text
          : widget.args.uploadDataType == UploadDataType.textAndImages
              ? StringsResource.textAndImages
              : widget.args.uploadDataType == UploadDataType.textAndPdfs
                  ? StringsResource.textAndPdfs
                  : widget.args.uploadDataType ==
                          UploadDataType.textImagesAndPdfs
                      ? StringsResource.textImagesAndPdfs
                      : widget.args.uploadDataType ==
                              UploadDataType.imagesAndPdfs
                          ? StringsResource.imagesAndPdfs
                          : StringsResource.uploadData,
    );
  }
}
