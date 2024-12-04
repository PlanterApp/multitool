import 'package:flutter/material.dart';

extension DateTimeRangeExtensions on DateTimeRange {

  bool contains(DateTime dateTime) {
    return dateTime.isBefore(end) && dateTime.isAfter(start);
  }

}