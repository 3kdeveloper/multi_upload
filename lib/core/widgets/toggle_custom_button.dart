import '../constants/export.dart';

class ToggleCustomButton extends StatelessWidget {
  final String btnText;
  final double? width;
  final RequestStatus requestStatus;
  final bool isShowPleaseWaitText;
  final VoidCallback onPressed;
  final Color? btnColor;

  const ToggleCustomButton({
    Key? key,
    required this.btnText,
    required this.requestStatus,
    required this.onPressed,
    this.width,
    this.isShowPleaseWaitText = true,
    this.btnColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if ((requestStatus is RequestStatusLoading)) {
      return CustomButton(
        width: width,
        btnColor: btnColor,
        onPressed: () {},
        btnText: '',
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LoadingWidget(color: ColorsResource.whiteColor),
            SizedBox(width: context.w * ScreenPercentage.screenSize_2),
            isShowPleaseWaitText
                ? CustomTextView(
                    text: StringsResource.pleaseWait,
                    textStyle: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: ColorsResource.whiteColor),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      );
    } else {
      return CustomButton(
        onPressed: onPressed,
        width: width,
        btnText: btnText,
        btnColor: btnColor,
      );
    }
  }
}
