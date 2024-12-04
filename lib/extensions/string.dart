import 'package:screwdriver/screwdriver.dart';

extension StringExtensions on String {

  List<String> csvToList() {
    if (length > 1) {
      var list = split(",");
      for (var i = 0; i < list.length; i++) {
        list[i] = list[i].trim();
      }
      return list;
    } else {
      return [];
    }
  }

  String removeFileExtension() {
    final parts = split(".");
    if (parts.length > 1) {
      return parts.take(parts.length - 1).join('.');
    } else {
      return parts.first;
    }
  }

  /// Replaces the file extension
  String replaceFileExtension(String replacement) {
    return removeFileExtension() + replacement;
  }

  String toNiceUrlString() => toLowerCase().replaceAll(' ', '-');

  String replaceSuffix(String from, String to) {
    if (endsWith(from)) {
      return replaceRange(length - from.length, null, to);
    } else {
      return this;
    }
  }

  String camelToSpaceSeparatedSentence() {
    RegExp exp = RegExp(r'(?<=[a-z])(?=[A-Z])');
    return replaceAllMapped(exp, (Match m) => ' ${m.group(0)}').capitalized;
  }

}