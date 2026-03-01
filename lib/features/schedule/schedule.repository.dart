import '../../shared/abstractions/order_by.dart';
import '../../shared/contracts/repository.dart';
import 'schedule.dart';
import 'schedule.query.dart';

abstract interface class IScheduleRepository
    implements IRepository<Schedule, ScheduleFilter, OrderBy<ScheduleField>> {}
