import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final Widget? child;
  final double elevation;

  const BaseCard({
    required this.child,
    this.elevation = 4,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: child,
    );
  }
}
