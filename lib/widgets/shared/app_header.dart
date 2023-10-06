import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/global/apple_device_identifier.dart';
import 'package:quiz_app/widgets/shared/layouts/base_row.dart';

import '../shared/display_for.dart';

class AppHeader extends StatelessWidget
    implements PreferredSizeWidget, ObstructingPreferredSizeWidget {
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool centeredTitle;
  final double height;
  final Widget? leading;
  final String title;

  const AppHeader({
    required this.title,
    this.actions = const [],
    this.backgroundColor,
    this.centeredTitle = false,
    this.height = 50,
    this.leading,
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    final Color backgroundColor =
        CupertinoDynamicColor.maybeResolve(this.backgroundColor, context) ??
            CupertinoTheme.of(context).barBackgroundColor;
    return backgroundColor.alpha == 0xFF;
  }

  @override
  Widget build(BuildContext context) {
    if (deviceIsApple) {
      return CupertinoNavigationBar(
        backgroundColor: backgroundColor,
        leading: leading,
        middle: DisplayFor(value: title),
        trailing: BaseRow(
          children: actions!,
        ),
      );
    } else {
      return AppBar(
        actions: actions,
        backgroundColor: backgroundColor,
        centerTitle: centeredTitle,
        leading: leading,
        primary: true,
        title: DisplayFor(value: title),
      );
    }
  }
}
