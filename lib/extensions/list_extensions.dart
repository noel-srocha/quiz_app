extension ListExtensions on List? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
