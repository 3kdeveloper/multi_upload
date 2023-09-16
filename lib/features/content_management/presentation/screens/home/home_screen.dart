import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:multi_upload_pro/core/widgets/error_text_widget.dart';
import 'package:multi_upload_pro/features/content_management/data/models/content_management.dart';
import '../../../../../core/constants/export.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final auth = sl.get<FirebaseAuth>();
  final fireStore = sl.get<FirebaseFirestore>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: StringsResource.fetchedData,
          height: Size.fromHeight(context.h * ScreenPercentage.screenSize_12),
          bottom: _buildBottomTabBar(context),
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final data =
                    snapshot.data?.docs as List<QueryDocumentSnapshot<Object?>>;
                return TabBarView(children: [
                  buildText(data, context),
                  buildTextAndImages(data, context),
                  buildTextAndPdfs(data, context),
                  buildImagesAndPdfs(data, context),
                  buildTextImagesAndPdfs(data, context),
                ]);
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: LoadingWidget());
              } else {
                return const CustomTextView(text: StringsResource.noDataFound);
              }
            }),
        floatingActionButton: buildSpeedDial(context),
      ),
    );
  }

  SpeedDial buildSpeedDial(BuildContext context) {
    return SpeedDial(
      backgroundColor: ColorsResource.primaryColor,
      icon: Icons.add,
      children: [
        SpeedDialChild(
            label: StringsResource.textImagesAndPdfs,
            labelBackgroundColor: ColorsResource.primaryColor,
            labelStyle: textTheme.labelMedium
                ?.copyWith(color: ColorsResource.whiteColor),
            onTap: () => moveToUploadDataScreen(
                context, UploadDataType.textImagesAndPdfs)),
        SpeedDialChild(
            label: StringsResource.imagesAndPdfs,
            labelBackgroundColor: ColorsResource.primaryColor,
            labelStyle: textTheme.labelMedium
                ?.copyWith(color: ColorsResource.whiteColor),
            onTap: () =>
                moveToUploadDataScreen(context, UploadDataType.imagesAndPdfs)),
        SpeedDialChild(
            label: StringsResource.textAndPdfs,
            labelBackgroundColor: ColorsResource.primaryColor,
            labelStyle: textTheme.labelMedium
                ?.copyWith(color: ColorsResource.whiteColor),
            onTap: () =>
                moveToUploadDataScreen(context, UploadDataType.textAndPdfs)),
        SpeedDialChild(
            label: StringsResource.textAndImages,
            labelBackgroundColor: ColorsResource.primaryColor,
            labelStyle: textTheme.labelMedium
                ?.copyWith(color: ColorsResource.whiteColor),
            onTap: () =>
                moveToUploadDataScreen(context, UploadDataType.textAndImages)),
        SpeedDialChild(
            label: StringsResource.text,
            labelBackgroundColor: ColorsResource.primaryColor,
            labelStyle: textTheme.labelMedium
                ?.copyWith(color: ColorsResource.whiteColor),
            onTap: () => moveToUploadDataScreen(context, UploadDataType.text)),
      ],
    );
  }

  Widget buildText(
      List<QueryDocumentSnapshot<Object?>> data, BuildContext context) {
    final hasText = data.any(
        (item) => item[Constants.uploadDataType] == UploadDataType.text.name);
    return hasText
        ? ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.all(context.w * ScreenPercentage.screenSize_2),
            itemBuilder: (context, index) {
              return data[index][Constants.uploadDataType] ==
                      UploadDataType.text.name
                  ? buildTileCard(context, data, index,
                      contentManagementModel: ContentManagementModel(
                          text: data[index][Constants.text],
                          uploadDataType: UploadDataType.text))
                  : const SizedBox.shrink();
            })
        : _buildNoDataErrorWidget();
  }

  Widget buildTextAndImages(
      List<QueryDocumentSnapshot<Object?>> data, BuildContext context) {
    final hasTextAndImages = data.any((item) =>
        item[Constants.uploadDataType] == UploadDataType.textAndImages.name);
    return hasTextAndImages
        ? ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.all(context.w * ScreenPercentage.screenSize_2),
            itemBuilder: (context, index) {
              return data[index][Constants.uploadDataType] ==
                      UploadDataType.textAndImages.name
                  ? buildTileCard(context, data, index,
                      subtitle: _buildFetchedImgListView(context, data, index),
                      contentManagementModel: ContentManagementModel(
                        text: data[index][Constants.text],
                        images: data[index][Constants.images].cast<String>(),
                        uploadDataType: UploadDataType.textAndImages,
                      ))
                  : const SizedBox.shrink();
            })
        : _buildNoDataErrorWidget();
  }

  Widget buildTextAndPdfs(
      List<QueryDocumentSnapshot<Object?>> data, BuildContext context) {
    final hasTextAndPdfs = data.any((item) =>
        item[Constants.uploadDataType] == UploadDataType.textAndPdfs.name);
    return hasTextAndPdfs
        ? ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.all(context.w * ScreenPercentage.screenSize_2),
            itemBuilder: (context, index) {
              return data[index][Constants.uploadDataType] ==
                      UploadDataType.textAndPdfs.name
                  ? buildTileCard(context, data, index,
                      subtitle: _buildFetchedPdfsListView(context, data, index),
                      contentManagementModel: ContentManagementModel(
                        text: data[index][Constants.text],
                        pdfs: data[index][Constants.pdfs].cast<String>(),
                        uploadDataType: UploadDataType.textAndPdfs,
                      ))
                  : const SizedBox.shrink();
            })
        : _buildNoDataErrorWidget();
  }

  Widget buildImagesAndPdfs(
      List<QueryDocumentSnapshot<Object?>> data, BuildContext context) {
    final hasImagesAndPdfs = data.any((item) =>
        item[Constants.uploadDataType] == UploadDataType.imagesAndPdfs.name);
    return hasImagesAndPdfs
        ? ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.all(context.w * ScreenPercentage.screenSize_2),
            itemBuilder: (context, index) {
              return data[index][Constants.uploadDataType] ==
                      UploadDataType.imagesAndPdfs.name
                  ? buildTileCard(context, data, index,
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildFetchedImgListView(context, data, index),
                          _buildFetchedPdfsListView(context, data, index),
                        ],
                      ),
                      contentManagementModel: ContentManagementModel(
                        text: data[index][Constants.text],
                        images: data[index][Constants.images].cast<String>(),
                        pdfs: data[index][Constants.pdfs].cast<String>(),
                        uploadDataType: UploadDataType.textAndPdfs,
                      ))
                  : const SizedBox.shrink();
            })
        : _buildNoDataErrorWidget();
  }

  Widget buildTextImagesAndPdfs(
      List<QueryDocumentSnapshot<Object?>> data, BuildContext context) {
    final hasTextImagesAndPdfs = data.any((item) =>
        item[Constants.uploadDataType] ==
        UploadDataType.textImagesAndPdfs.name);

    return hasTextImagesAndPdfs
        ? ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.all(context.w * ScreenPercentage.screenSize_2),
            itemBuilder: (context, index) {
              return data[index][Constants.uploadDataType] ==
                      UploadDataType.textImagesAndPdfs.name
                  ? buildTileCard(context, data, index,
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildFetchedImgListView(context, data, index),
                          _buildFetchedPdfsListView(context, data, index),
                        ],
                      ),
                      contentManagementModel: ContentManagementModel(
                        text: data[index][Constants.text],
                        images: data[index][Constants.images].cast<String>(),
                        pdfs: data[index][Constants.pdfs].cast<String>(),
                        uploadDataType: UploadDataType.textAndPdfs,
                      ))
                  : const SizedBox.shrink();
            })
        : _buildNoDataErrorWidget();
  }

  Widget _buildNoDataErrorWidget() {
    return const Center(
        child: ErrorTextWidget(errorMessage: StringsResource.noDataFound));
  }

  Widget buildTileCard(BuildContext context,
      List<QueryDocumentSnapshot<Object?>> data, int index,
      {Widget? subtitle, ContentManagementModel? contentManagementModel}) {
    return Card(
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, RouteNames.detailScreen,
            arguments: DetailScreenArgs(
                contentManagementModel:
                    contentManagementModel ?? const ContentManagementModel())),
        title: CustomTextView(
            text: data[index][Constants.text] ?? StringsResource.imagesAndPdfs,
            isEllipsis: true,
            align: TextAlign.start,
            textStyle: textTheme.labelMedium),
        subtitle: subtitle ??
            CustomTextView(
                text: StringsResource.tapForDetails,
                align: TextAlign.start,
                textStyle: textTheme.labelSmall),
        trailing: const Icon(Icons.arrow_forward_ios,
            color: ColorsResource.primaryColor),
      ),
    );
  }

  Widget _buildFetchedImgListView(BuildContext context,
      List<QueryDocumentSnapshot<Object?>> data, int index) {
    return SizedBox(
        height: context.h * ScreenPercentage.screenSize_8,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: data[index][Constants.images].length,
          padding:
              EdgeInsets.only(top: context.h * ScreenPercentage.screenSize_1),
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      context.w * ScreenPercentage.screenSize_1),
                  border: Border.all(color: ColorsResource.primaryColor)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    context.w * ScreenPercentage.screenSize_1),
                child: CachedNetworkImage(
                  imageUrl: data[index][Constants.images][i],
                  height: context.h * ScreenPercentage.screenSize_2,
                  width: context.w * ScreenPercentage.screenSize_12,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          separatorBuilder: (context, i) =>
              SizedBox(width: context.w * ScreenPercentage.screenSize_2),
        ));
  }

  Widget _buildFetchedPdfsListView(BuildContext context,
      List<QueryDocumentSnapshot<Object?>> data, int index) {
    return SizedBox(
        height: context.h * ScreenPercentage.screenSize_8,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: data[index][Constants.pdfs].length,
          padding:
              EdgeInsets.only(top: context.h * ScreenPercentage.screenSize_1),
          itemBuilder: (context, i) {
            return SvgPicture.asset(
              ImagesResource.pdf,
              fit: BoxFit.scaleDown,
              height: context.h * ScreenPercentage.screenSize_6,
            );
          },
          separatorBuilder: (context, i) =>
              SizedBox(width: context.w * ScreenPercentage.screenSize_2),
        ));
  }

  PreferredSize _buildBottomTabBar(BuildContext context) {
    return PreferredSize(
      preferredSize:
          Size.fromHeight(context.h * ScreenPercentage.screenSize_12),
      child: PreferredSize(
        preferredSize:
            Size.fromHeight(context.h * ScreenPercentage.screenSize_6),
        child: Material(
          color: ColorsResource.whiteColor,
          child: TabBar(
            isScrollable: true,
            onTap: (value) => logger.f(value),
            tabs: const [
              Tab(text: StringsResource.text),
              Tab(text: StringsResource.textAndImages),
              Tab(text: StringsResource.textAndPdfs),
              Tab(text: StringsResource.imagesAndPdfs),
              Tab(text: StringsResource.textImagesAndPdfs),
            ],
          ),
        ),
      ),
    );
  }

  void moveToUploadDataScreen(
    BuildContext context,
    UploadDataType uploadDataType,
  ) =>
      Navigator.pushNamed(context, RouteNames.uploadDataScreen,
          arguments: UploadDataScreenArgs(uploadDataType: uploadDataType));

  Stream<QuerySnapshot<Map<String, dynamic>>> fetchData() => fireStore
      .collection(
          '${Constants.dataCollection}/${auth.currentUser?.uid}/${Constants.userUploadedDataCollection}/')
      .snapshots();
}
