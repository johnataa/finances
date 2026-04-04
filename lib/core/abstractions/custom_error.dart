import 'package:equatable/equatable.dart';

final class CustomError extends Equatable {
  final String code;
  final String message;

  const CustomError({required this.code, required this.message});

  @override
  List<Object?> get props => [code, message];
}
