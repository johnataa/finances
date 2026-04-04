import 'package:freezed_annotation/freezed_annotation.dart';

part 'base.freezed.dart';

@freezed
abstract class Base with _$Base {
  const Base._();

  const factory Base.create({@Default(0) int id, DateTime? createdAt, DateTime? updatedAt}) = _Base;

  static const Base empty = .create();
}
