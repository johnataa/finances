import 'package:flutter/foundation.dart';

import '../../../core/abstractions/filter.dart';

class BaseFilter {
  final FilterLogic logic;
  final IntFilter? id;
  final DateTimeFilter? createdAt;
  final DateTimeFilter? updatedAt;

  @protected
  const BaseFilter({this.logic = .or, this.id, this.createdAt, this.updatedAt});
}
