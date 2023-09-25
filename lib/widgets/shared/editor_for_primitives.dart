import 'package:flutter/material.dart';
import '../../extensions/typing.dart';

class EditorForPrimitives<T> extends StatelessWidget {
  final T value;

  const EditorForPrimitives({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    switch (value.typing) {
      case 'int':
        return TextFormField(
          keyboardType: TextInputType.number,
        );

      case 'double':
        return TextFormField(
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        );

      case 'bool':
        return Switch(
          value: value as bool,
          onChanged: (_) {},
        );

      case 'String':
      default:
        return TextFormField();
    }
  }
}
