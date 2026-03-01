import 'package:flutter/foundation.dart';

import '../../../../features/schedule/schedule.dart';
import '../../../../features/schedule/schedule.query.dart';
import '../../../../features/schedule/schedule.repository.dart';
import '../../../../shared/abstractions/order_by.dart';
import '../gen/objectbox.g.dart';
import '../shared/base_box.dart';
import '../shared/query_parser.dart';
import 'schedule_box.model.dart';

final class ScheduleBox
    extends BaseBox<ScheduleBM, Schedule, ScheduleFilter, OrderBy<ScheduleField>>
    implements IScheduleRepository {
  ScheduleBox(super.store, super.mapper);

  @override
  @protected
  QueryParser<ScheduleBM> parseQuery(ScheduleFilter? filter, OrderBy<ScheduleField>? orderBy) =>
      QueryParser(
        filter?.logic,
        [
          filter?.id.using(ScheduleBM_.id),
          filter?.name.using(ScheduleBM_.name),
          filter?.startDate.using(ScheduleBM_.startDate),
          filter?.endDate.using(ScheduleBM_.endDate),
          filter?.createdAt.using(ScheduleBM_.createdAt),
          filter?.updatedAt.using(ScheduleBM_.updatedAt),
          filter?.amount.using(ScheduleBM_.amount, ScheduleBM_.currency),
        ],
        switch (orderBy?.field) {
          .id => orderBy.using(ScheduleBM_.id),
          .name => orderBy.using(ScheduleBM_.name),
          .amount => orderBy.using(ScheduleBM_.amount),
          .startDate => orderBy.using(ScheduleBM_.startDate),
          .endDate => orderBy.using(ScheduleBM_.endDate),
          .createdAt => orderBy.using(ScheduleBM_.createdAt),
          .updatedAt => orderBy.using(ScheduleBM_.updatedAt),
          _ => null,
        },
      );
}
