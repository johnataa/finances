import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';

@freezed
abstract class Meta with _$Meta {
  const factory Meta({@Default(0) int id, DateTime? createdAt, DateTime? updatedAt}) =
      _Meta;

  static const empty = Meta();
}
