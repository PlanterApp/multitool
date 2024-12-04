extension Extension on Object? {
  bool isNullOrEmpty() => this == null || this == '';

  bool isNullEmptyOrFalse() => this == null || this == '' || !(this as bool);

  bool isNullEmptyZeroOrFalse() =>
      this == null || this == '' || !(this as bool) || this == 0;
}