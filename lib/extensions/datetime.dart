extension DateTimeExtensions on DateTime {

  int dayOfYear() {
    final yearStart = DateTime(year, 1, 1, 0, 0);
    return difference(yearStart).inDays;
  }

}