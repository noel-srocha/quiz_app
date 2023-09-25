import 'package:flutter/material.dart';

import '../../extensions/typing.dart';

class SwitchOnFormFields<T> extends StatelessWidget {
  final T value;
  final void Function(T) action;

  const SwitchOnFormFields({required this.value, required this.action, super.key});

  @override
  Widget build(BuildContext context) {
    switch (value.typing) {
      case 'int':
        return TextFormField(
          onSaved: action as void Function(String?),
          keyboardType: TextInputType.number,
        );

      case 'double':
        return TextFormField(
          onSaved: action as void Function(String?),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        );

      case 'bool':
        return Switch(
          value: value as bool,
          onChanged: action as void Function(bool)?,
        );

      case 'String':
      default:
        return TextFormField(
          onSaved: action as void Function(String?),
        );
    }
  }
}
