import '../../../../core/constants/export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    String? title,
    List<Widget>? actions,
    double? elevation,
    PreferredSize? bottom,
    Size? height,
  })  : _title = title ?? '',
        _actions = actions,
        _elevation = elevation,
        _bottom = bottom,
        _height = height,
        super(key: key);

  final String _title;
  final List<Widget>? _actions;
  final double? _elevation;
  final PreferredSize? _bottom;
  final Size? _height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: _elevation ?? 0.0,
      title: CustomTextView(text: _title, textStyle: textTheme.labelLarge),
      centerTitle: true,
      actions: _actions,
      bottom: _bottom,
    );
  }

  @override
  Size get preferredSize =>
      _height ?? const Size.fromHeight(DimensionsResource.d_60);
}
