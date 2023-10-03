extension ListExtensions<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => !this!.isNullOrEmpty;
  int get count => isNullOrEmpty ? 0 : this!.length;
  T get first => this![0];
  T get last => this![this!.length - 1];
}
