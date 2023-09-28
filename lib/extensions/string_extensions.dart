extension StringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  
  String capitalize({bool isTitle = false}) {
    if (isNullOrEmpty) {
      throw Exception('String is empty');
    }

    var wordsList = this!.split(' ');
    String modifiedPhrase = '';

    for (var word in wordsList) {
      word[0].toUpperCase();

      modifiedPhrase += '$word ';
    }

    return modifiedPhrase.trimRight();
  }
}