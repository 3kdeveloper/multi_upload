import '../../../../core/constants/export.dart';

void customBottomSheet(
    BuildContext context,
    String firstItemText,
    String secondItemText,
    Widget firstItemIcon,
    Widget secondItemIcon,
    Function() firstItemTap,
    Function() secondItemTap) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: <Widget>[
            ListTile(
                title: CustomTextView(
                    text: firstItemText,
                    align: TextAlign.start,
                    textStyle: textTheme.titleSmall),
                leading: firstItemIcon,
                onTap: firstItemTap),
            ListTile(
              title: CustomTextView(
                  text: secondItemText,
                  align: TextAlign.start,
                  textStyle: textTheme.titleSmall),
              leading: secondItemIcon,
              onTap: secondItemTap,
            ),
          ],
        );
      });
}
