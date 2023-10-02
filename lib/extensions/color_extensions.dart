import 'package:flutter/material.dart';
import 'package:quiz_app/extensions/string_extensions.dart';

extension ColorExtensions on Color {
  
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    if (hexString.isNullOrEmpty) {
      throw Exception('Hex Color String is null or empty');
    }

    final buffer = StringBuffer();
    buffer.write("0xff");
    
    if (hexString.contains('#')) {
      buffer.write(hexString.replaceFirst('#', ''));
    }

    buffer.write(hexString);

    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
