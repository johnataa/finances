import '../../../../features/transaction/transaction.dart';
import '../shared/base_mapper.dart';
import '../shared/mapper.dart';
import 'transaction_box.model.dart';

final class TransactionBoxMapper implements IMapper<Transaction, TransactionBM> {
  @override
  TransactionBM toBoxModel(Transaction entity) =>
      TransactionBM(
          id: entity.base.id,
          createdAt: entity.base.createdAt,
          updatedAt: entity.base.updatedAt,
          name: entity.name.value,
          amount: entity.amount.asScaledInt,
          currency: entity.amount.currency.id,
          type: entity.type.id,
          status: entity.status.id,
          date: entity.date,
          notes: entity.notes,
        )
        ..account.targetId = entity.accountId
        ..category.targetId = entity.categoryId
        ..schedule.targetId = entity.scheduleId ?? 0;

  @override
  Transaction toEntity(TransactionBM model) => Transaction(
    base: BaseMapper.toEntity(model),
    name: .create(model.name),
    amount: .fromScaledInt(model.currency, model.amount),
    type: .fromId(model.type),
    status: .fromId(model.status),
    date: model.date,
    notes: model.notes,
    accountId: model.account.targetId,
    categoryId: model.category.targetId,
    scheduleId: model.schedule.targetId == 0 ? null : model.schedule.targetId,
  );
}
