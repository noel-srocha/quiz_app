import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/editor_for/form_fields.dart';
import '../../extensions/object_extensions.dart';

class EditorForPrimitives<T> extends StatelessWidget {
  final T value;
  final GlobalKey<FormState>? formKey;

  const EditorForPrimitives({required this.value, this.formKey, super.key});

  @override
  Widget build(BuildContext context) {
    if (formKey.isNotNull) {
      return SwitchOnFormFields(value: value, action: (_) {});
    }
    return Container();
  }
}
