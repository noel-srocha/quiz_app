import 'package:flutter/material.dart';

import 'configs/button_variants.dart';

class Button extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final ButtonVariant variant;

  const Button(
      {required this.label,
      required this.onPressed,
      this.variant = ButtonVariant.primary,
      super.key});

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case ButtonVariant.secondary:
        return OutlinedButton(
          onPressed: onPressed,
          child: Text(label),
        );

      case ButtonVariant.tertiary:
        return TextButton(
          onPressed: onPressed,
          child: Text(label),
        );

      case ButtonVariant.primary:
      default:
        return ElevatedButton(
          onPressed: onPressed,
          child: Text(label),
        );
    }
  }
}
