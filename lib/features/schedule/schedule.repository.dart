import '../../core/abstractions/order_by.dart';
import '../../core/interfaces/repository.dart';
import 'schedule.dart';
import 'schedule.query.dart';

abstract interface class IScheduleRepository
    implements IRepository<Schedule, ScheduleFilter, OrderBy<ScheduleField>> {}
