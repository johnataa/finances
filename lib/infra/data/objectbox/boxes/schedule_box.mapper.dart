import '../../../../features/schedule/schedule.dart';
import '../shared/base_mapper.dart';
import '../shared/mapper.dart';
import 'schedule_box.model.dart';

final class ScheduleBoxMapper implements IMapper<Schedule, ScheduleBM> {
  @override
  ScheduleBM toBoxModel(Schedule entity) =>
      ScheduleBM(
          id: entity.base.id,
          createdAt: entity.base.createdAt,
          updatedAt: entity.base.updatedAt,
          name: entity.name.value,
          amount: entity.amount.asScaledInt,
          currency: entity.amount.currency.id,
          frequencyValue: entity.frequency.value,
          frequencyUnit: entity.frequency.unit.id,
          type: entity.type.id,
          startDate: entity.startDate,
          endDate: entity.endDate,
        )
        ..account.targetId = entity.accountId
        ..category.targetId = entity.categoryId;

  @override
  Schedule toEntity(ScheduleBM model) => Schedule(
    base: BaseMapper.toEntity(model),
    name: .create(model.name),
    amount: .fromScaledInt(model.currency, model.amount),
    frequency: .create(model.frequencyValue, .fromId(model.frequencyUnit)),
    type: .fromId(model.type),
    startDate: model.startDate,
    endDate: model.endDate,
    accountId: model.account.targetId,
    categoryId: model.category.targetId,
  );
}
