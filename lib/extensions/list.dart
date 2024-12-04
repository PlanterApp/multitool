extension ListExtensions<E> on List<E> {

  void replaceWith(Iterable<E> iterable) {
    clear();
    addAll(iterable);
  }

}

extension StringListExtensions on List<String> {

  String toCommaAndList() {
    if (length == 0) {
      return "";
    } else if (length == 1) {
      return first;
    } else if (length == 2) {
      return "${this[0]} and ${this[1]}";
    } else {
      final tempCopy = List.of(this);
      tempCopy[length - 1]  = "and $last";
      return tempCopy.join(", ");
    }
  }

}