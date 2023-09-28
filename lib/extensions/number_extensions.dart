enum IntervalType { inclusive, exclusive }

enum RoundingStrategy { round, floor, ceil }

extension NumberExtensions on num? {
  bool get isNull => this == null;
  bool get isNotNull => !isNull;
  bool get isPositive => this! > 0;
  bool get isZero => this == 0;
  bool get isNegativeOrZero => !isPositive || isZero;

  num round(
      {int places = 0, RoundingStrategy strategy = RoundingStrategy.floor}) {
    if (isNull) {
      throw Exception('Number is null');
    }

    if (places.isNegativeOrZero) {
      return this!;
    }

    switch (strategy) {
      case RoundingStrategy.floor:
        return this!.floor();
      case RoundingStrategy.ceil:
        return this!.ceil();
      case RoundingStrategy.round:
      default:
        return this!.round();
    }
  }

  bool isInRangeOf(num min, num max,
      {IntervalType minInterval = IntervalType.inclusive,
      IntervalType maxInterval = IntervalType.exclusive}) {
    if (isNull) {
      throw Exception('Number is null');
    }

    if (minInterval == IntervalType.inclusive &&
        maxInterval == IntervalType.inclusive) {
      return this! >= min && this! <= max;
    } else if (minInterval == IntervalType.inclusive &&
        maxInterval == IntervalType.exclusive) {
      return this! >= min && this! < max;
    } else if (minInterval == IntervalType.exclusive &&
        maxInterval == IntervalType.inclusive) {
      return this! > min && this! <= max;
    } else {
      return this! > min && this! < max;
    }
  }

  bool notInRange(num min, num max,
      {IntervalType minInterval = IntervalType.inclusive,
      IntervalType maxInterval = IntervalType.exclusive}) {
    return !isInRangeOf(min, max,
        minInterval: minInterval, maxInterval: maxInterval);
  }
}
