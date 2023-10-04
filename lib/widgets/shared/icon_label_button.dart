import 'package:flutter/material.dart';

import 'configs/button_configs.dart';

class IconLabelButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function() onPressed;
  final ButtonVariant variant;

  const IconLabelButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    this.variant = ButtonVariant.primary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case ButtonVariant.secondary:
        return OutlinedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(label),
        );

      case ButtonVariant.tertiary:
        return TextButton.icon(
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(label),
        );

      case ButtonVariant.primary:
      default:
        return ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(label),
        );
    }
  }
}
