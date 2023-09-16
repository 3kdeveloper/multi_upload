import '../../../../../core/constants/export.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.args});

  final DetailScreenArgs args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: StringsResource.detailScreen),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(context.h * ScreenPercentage.screenSize_2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextView(
                align: TextAlign.start,
                text: args.contentManagementModel.text ??
                    StringsResource.imagesAndPdfs,
                textStyle: textTheme.labelMedium,
              ),
              SizedBox(height: context.h * ScreenPercentage.screenSize_2),
              args.contentManagementModel.images != null
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextView(
                            text: StringsResource.images,
                            textStyle: textTheme.labelLarge),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: context.h * ScreenPercentage.screenSize_2),
                            child: _buildFetchedImgListView(
                                context,
                                args.contentManagementModel.images ??
                                    <String>[]),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
              args.contentManagementModel.images != null
                  ? SizedBox(height: context.h * ScreenPercentage.screenSize_2)
                  : const SizedBox.shrink(),
              args.contentManagementModel.pdfs != null
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextView(
                            text: StringsResource.pdfs,
                            textStyle: textTheme.labelLarge),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: context.h * ScreenPercentage.screenSize_2),
                            child: _buildFetchedPdfsListView(context,
                                args.contentManagementModel.pdfs ?? <String>[]),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFetchedImgListView(BuildContext context, List<String> images) {
    return SizedBox(
      child: AutoHeightGridView(
        shrinkWrap: true,
        itemCount: images.length,
        crossAxisCount: 3,
        physics: const NeverScrollableScrollPhysics(),
        padding:
            EdgeInsets.only(top: context.h * ScreenPercentage.screenSize_1),
        builder: (context, i) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    context.w * ScreenPercentage.screenSize_1),
                border: Border.all(color: ColorsResource.primaryColor)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  context.w * ScreenPercentage.screenSize_1),
              child: CachedNetworkImage(
                imageUrl: images[i],
                height: context.h * ScreenPercentage.screenSize_15,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFetchedPdfsListView(BuildContext context, List<String> pdfs) {
    return AutoHeightGridView(
      shrinkWrap: true,
      itemCount: pdfs.length,
      crossAxisCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: context.h * ScreenPercentage.screenSize_1),
      builder: (context, i) {
        return SvgPicture.asset(
          ImagesResource.pdf,
          fit: BoxFit.scaleDown,
          height: context.h * ScreenPercentage.screenSize_8,
        );
      },
    );
  }
}
