import '../../../../core/money/money.dart';
import '../../../../features/account/account.dart';
import '../../../../features/account/regular/regular_account.dart';
import '../../../../features/account/savings/savings_account.dart';
import '../shared/base_mapper.dart';
import '../shared/mapper.dart';
import 'account_box.model.dart';
import 'schedule_box.mapper.dart';

final class AccountBoxMapper implements IMapper<Account, AccountBM> {
  final ScheduleBoxMapper scheduleBoxMapper;

  AccountBoxMapper(this.scheduleBoxMapper);

  @override
  AccountBM toBoxModel(Account entity) {
    final model = AccountBM(
      createdAt: entity.base.createdAt,
      updatedAt: entity.base.updatedAt,
      name: entity.name.value,
      balance: entity.balance.asScaledInt,
      balanceCurrency: entity.balance.currency.id,
    );

    model.schedules.addAll(entity.schedules.map(scheduleBoxMapper.toBoxModel));

    if (entity is RegularAccount) {
      model.id = entity.accountId;
      model.regularAccount.target = RegularAccountBM(id: entity.base.id);
    }

    if (entity is SavingsAccount) {
      model.id = entity.accountId;
      model.savingsAccount.target = SavingsAccountBM(
        id: entity.base.id,
        savingsGoal: entity.goal.id,
        amountToCover: entity.amountToCover?.asScaledInt,
        amountToCoverCurrency: entity.amountToCover?.currency.id,
        coverageInMonth: entity.coverageInMonth,
      );
    }

    return model;
  }

  @override
  Account toEntity(AccountBM model) {
    final regularAccount = _getRegularAccount(model);
    if (regularAccount != null) return regularAccount;

    final savingsAccount = _getSavingsAccount(model);
    if (savingsAccount != null) return savingsAccount;

    throw Exception('Invalid account type');
  }

  Account? _getRegularAccount(AccountBM model) {
    if (model.regularAccount.target == null) return null;

    return RegularAccount(
      base: BaseMapper.toEntity(model, id: model.regularAccount.targetId),
      name: .create(model.name),
      balance: .fromScaledInt(model.balanceCurrency, model.balance),
      schedules: scheduleBoxMapper.toEntities(model.schedules),
      accountId: model.id,
    );
  }

  Account? _getSavingsAccount(AccountBM model) {
    if (model.savingsAccount.target == null) return null;

    return SavingsAccount(
      base: BaseMapper.toEntity(model, id: model.savingsAccount.targetId),
      name: .create(model.name),
      balance: .fromScaledInt(model.balanceCurrency, model.balance),
      goal: .fromId(model.savingsAccount.target!.savingsGoal),
      amountToCover: _getAmountToCover(model.savingsAccount.target!),
      coverageInMonth: model.savingsAccount.target!.coverageInMonth,
      accountId: model.id,
    );
  }

  Money? _getAmountToCover(SavingsAccountBM target) {
    if (target.amountToCover == null) return null;
    return .fromScaledInt(target.amountToCoverCurrency!, target.amountToCover!);
  }
}
