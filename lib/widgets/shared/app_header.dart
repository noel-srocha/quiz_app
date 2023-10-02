import 'package:flutter/material.dart';

import '../shared/display_for.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final bool centeredTitle;
  final double height;
  final String title;

  const AppHeader({
    required this.title,
    this.centeredTitle = false,
    this.actions,
    this.height = 50,
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      centerTitle: centeredTitle,
      title: DisplayFor(value: title),
      primary: true,
    );
  }
}
