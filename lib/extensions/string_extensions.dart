import './boolean_extensions.dart';

extension StringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  String capitalize({bool isTitle = false}) {
    if (isNullOrEmpty) {
      return '';
    }

    var wordsList = this!.split(' ');
    String modifiedPhrase = '';

    for (var word in wordsList) {
      word[0].toUpperCase();

      modifiedPhrase += '$word ';
    }

    return modifiedPhrase.trimRight();
  }

  bool isGreaterThan(int value, {bool equal = false}) {
    if (isNullOrEmpty) {
      return false;
    }

    if (equal.isTrue) {
      return this!.length >= value;
    }

    return this!.length > value;
  }

  bool isLessThan(int value, {bool equal = false}) {
    if (isNullOrEmpty) {
      return false;
    }

    if (equal.isTrue) {
      return this!.length <= value;
    }

    return this!.length < value;
  }


}
