import 'package:finances/core/base/base.dart';
import 'package:finances/core/interfaces/entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_mock.freezed.dart';

@freezed
sealed class EntityMock with _$EntityMock implements IEntity {
  const EntityMock._();

  @override
  int get id => base.id;

  const factory EntityMock({@Default(Base.empty) Base base, required String sillyProp}) =
      _EntityMock;
}
