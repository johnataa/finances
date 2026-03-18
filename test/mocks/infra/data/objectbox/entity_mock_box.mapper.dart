import 'package:finances/infra/data/objectbox/shared/base_mapper.dart';
import 'package:finances/infra/data/objectbox/shared/mapper.dart';

import '../../../features/entity_mock.dart';
import 'entity_mock_box.model.dart';

final class EntityBoxMapperMock implements IMapper<EntityMock, EntityBMMock> {
  @override
  EntityBMMock toBoxModel(EntityMock entity) => EntityBMMock(
    id: entity.base.id,
    createdAt: entity.base.createdAt,
    updatedAt: entity.base.updatedAt,
    sillyProp: entity.sillyProp,
  );

  @override
  EntityMock toEntity(EntityBMMock model) =>
      EntityMock(base: BaseMapper.toEntity(model), sillyProp: model.sillyProp);
}
