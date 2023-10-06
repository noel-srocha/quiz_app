import 'package:flutter/material.dart';

class BaseColumn extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAlignment;
  final MainAxisSize mainAlignmentSize;
  final CrossAxisAlignment crossAlignment;

  const BaseColumn({
    required this.children,
    this.mainAlignment = MainAxisAlignment.start,
    this.mainAlignmentSize = MainAxisSize.min,
    this.crossAlignment = CrossAxisAlignment.center,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAlignment,
      mainAxisSize: mainAlignmentSize,
      crossAxisAlignment: crossAlignment,
      children: children,
    );
  }
}
