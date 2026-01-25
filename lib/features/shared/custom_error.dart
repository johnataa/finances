abstract class CustomError {
  final String code;
  final String message;

  const CustomError(this.code, this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomError &&
        other.code == code &&
        other.message == message;
  }

  @override
  int get hashCode => code.hashCode ^ message.hashCode;
}
