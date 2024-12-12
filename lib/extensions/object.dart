extension Extension on Object? {
  bool get isNullOrEmpty => this == null || this == '';

  bool get isNullEmptyOrFalse => this == null || this == '' || !(this as bool);

  bool get isNullEmptyZeroOrFalse =>
      this == null || this == '' || !(this as bool) || this == 0;
}