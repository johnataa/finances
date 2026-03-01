import 'package:finances/shared/abstractions/filter.dart';
import 'package:finances/shared/abstractions/order_by.dart';
import 'package:finances/shared/base/base_filter.dart';

class EntityFilterMock extends BaseFilter {
  final StringFilter? sillyProp;

  const EntityFilterMock.by({
    super.logic,
    super.id,
    super.createdAt,
    super.updatedAt,
    this.sillyProp,
  });
}

enum EntityFieldMock implements IOrderField { id, createdAt, updatedAt, sillyProp }
