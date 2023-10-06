import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  final BoxConstraints? constraints;
  final Decoration? decoration;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const BaseContainer({
    required this.child,
    this.constraints,
    this.decoration,
    this.height,
    this.margin,
    this.padding,
    this.width,
    required super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      decoration: decoration,
      height: height,
      margin: margin,
      padding: padding,
      width: width,
      child: child,
    );
  }
}
