import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tailor_project/utils/colors.dart';
import 'package:tailor_project/utils/constants.dart';
import 'package:tailor_project/utils/typographies.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    this.title = '',
    this.withBack = true,
    this.implyLeading = false,
    this.elevation = 0.0,
    this.backgroundColor = white,
    this.textColor = black,
    this.actions,
    this.bottom,
    this.onBackPressed,
  });

  final bool withBack;
  final bool implyLeading;
  final String title;
  final double elevation;
  final Color backgroundColor;
  final Color textColor;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final VoidCallback? onBackPressed;

  Size get preferredSize => Size(double.infinity, 56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: implyLeading,
      surfaceTintColor: white,
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: elevation,
      title: Text(
        title,
        style:
            bold.copyWith(fontSize: AdaptiveFontSize.getFontSize(context, 16)),
      ),
      actions: actions,
      bottom: bottom,
      shape: LinearBorder(
          bottom: LinearBorderEdge(),
          side: BorderSide(
            color: border,
          )),
      leading: withBack
          ? MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: onBackPressed,
                child: Icon(
                  EvaIcons.chevronLeftOutline,
                  color: textColor,
                ),
              ),
            )
          : SizedBox.shrink(),
    );
  }
}
