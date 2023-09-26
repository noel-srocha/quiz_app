import 'package:flutter/material.dart';
import 'package:quiz_app/extensions/typing.dart';

class DisplayFor<T> extends StatelessWidget {
  final T value;

  const DisplayFor({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    switch (value.typing) {
      case 'String':
      default:
        return Text(value as String);
    }
  }
}
