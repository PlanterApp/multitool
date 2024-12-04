import 'dart:math';

extension DoubleExtensions on double {

  /// Returns a string of the number rounded to [precision] number of decimals, or less if possible
  String toStringAsPrecisionOrInt(int precision) {
    final remainder = (this * pow(10, precision)) % 1;
    if (remainder != 0) {
      return toStringAsFixed(precision);
    } else if (this - truncate() != 0) {
      return toString();
    } else {
      return truncate().toString();
    }
  }

  /// Returns the value as a fraction symbol, otherwise returns [toStringAsPrecisionOrInt]
  String toFraction(int? decimals) {
    if (this < 1) {
      if (this == 0.125 || this == 0.13) {
        return "⅛";
      } else if (this == 0.25) {
        return "¼";
      } else if (this == 0.375 || this == 0.38) {
        return "⅜";
      } else if (this == 0.5) {
        return "½";
      } else if (this == 0.625 || this == 0.63) {
        return "⅝";
      } else if (this == 0.75) {
        return "¾";
      } else if (this == 0.875 || this == 0.88) {
        return "⅞";
      } else if (this >= 0.32 && this <= 0.34) {
        return "⅓";
      } else if (this >= 0.65 && this <= 0.67) {
        return "⅔";
      }
    }
    return toStringAsPrecisionOrInt(decimals!);
  }

  String toFormattedString({int? decimals, bool? showAsFraction, double? roundToNearestIncrement}) {
    var value = this;
    if (roundToNearestIncrement != null && roundToNearestIncrement != 0) {
      value = (this / roundToNearestIncrement).floor() * roundToNearestIncrement;
      final remainder = this.remainder(roundToNearestIncrement);
      if (remainder >= roundToNearestIncrement / 2) {
        value = value + roundToNearestIncrement;
      }
    }
    if (decimals == 0) {
      return value.truncate().toString();
    } else if (showAsFraction!) {
      return value.toFraction(decimals);
    } else {
      return value.toStringAsPrecisionOrInt(decimals!);
    }
  }

}