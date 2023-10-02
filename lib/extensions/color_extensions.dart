import 'package:flutter/material.dart';
import 'package:quiz_app/extensions/string_extensions.dart';

extension ColorExtensions on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();

    if (hexString.isNullOrEmpty || hexString.isGreaterThan(7)) {
      buffer.write('ff');
    }

    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
