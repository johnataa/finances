import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_meta.freezed.dart';

@freezed
abstract class EntityMeta with _$EntityMeta {
  const factory EntityMeta({@Default(0) int id, DateTime? createdAt, DateTime? updatedAt}) =
      _EntityMeta;

  static const empty = EntityMeta();
}
