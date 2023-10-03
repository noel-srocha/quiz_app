import 'package:flutter/material.dart';

import './boolean_extensions.dart';

extension StringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  int get count => isNullOrEmpty ? 0 : this!.length;
  String get toUpper => isNullOrEmpty ? '' : this!.toUpperCase();
  String get toLower => isNullOrEmpty ? '' : this!.toLowerCase();

  String capitalize({bool isTitle = false}) {
    if (isNullOrEmpty) {
      return '';
    }

    var wordsList = this!.split(' ');
    String modifiedPhrase = '';

    for (var word in wordsList) {
      word[0].toUpper;

      modifiedPhrase += '$word ';
    }

    return modifiedPhrase.trimRight();
  }

  bool equals(int value) {
    if (isNullOrEmpty) {
      return false;
    }

    return this!.count == value;
  }

  bool isGreaterThan(int value, {bool equal = false}) {
    if (isNullOrEmpty) {
      return false;
    }

    if (equal.isTrue) {
      return this!.count >= value;
    }

    return this!.count > value;
  }

  bool isLessThan(int value, {bool equal = false}) {
    if (isNullOrEmpty) {
      return false;
    }

    if (equal.isTrue) {
      return this!.count <= value;
    }

    return this!.count < value;
  }

  Color fromHex() {
    var hexString = this;

    if (hexString.isNullOrEmpty) {
      throw Exception('Hex Color String is null or empty');
    }

    if (hexString!.startsWith('#')) {
      hexString = hexString.substring(1);
    }

    final buffer = StringBuffer();

    if (hexString.equals(6)) {
      buffer.write('ff');
    }

    buffer.write(hexString);
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
