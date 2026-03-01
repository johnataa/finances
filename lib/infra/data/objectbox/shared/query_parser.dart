import '../../../../shared/abstractions/filter.dart';
import '../../../../shared/abstractions/order_by.dart';
import '../../../../shared/money/money.dart';
import '../../../../shared/money/money.query.dart';
import '../gen/objectbox.g.dart';
import 'box_model.dart';

class QueryParser<TModel extends IBoxModel> {
  final Condition<TModel>? condition;
  final OrderProp<TModel>? order;

  QueryParser(FilterLogic? logic, List<Condition<TModel>?> conditions, [this.order])
    : condition = _buildCondition(logic, conditions);

  static Condition<TModel>? _buildCondition<TModel extends IBoxModel>(
    FilterLogic? logic,
    List<Condition<TModel>?> conditions,
  ) {
    Condition<TModel>? condition;

    for (final Condition<TModel> c in conditions.nonNulls) {
      if (condition == null) {
        condition = c;
        continue;
      }

      condition = switch (logic ?? .or) {
        .and => condition.and(c),
        .or => condition.or(c),
      };
    }

    return condition;
  }
}

typedef OrderProp<T> = ({QueryProperty<T, dynamic> prop, int flag});

extension StringFilterExtension on StringFilter? {
  Condition<TModel>? using<TModel extends IBoxModel>(QueryStringProperty<TModel> prop) =>
      switch (this) {
        StringEquals se => prop.equals(se.input),
        StringContains sc => prop.contains(sc.input, caseSensitive: false),
        _ => null,
      };
}

extension IntFilterExtension on IntFilter? {
  Condition<TModel>? using<TModel extends IBoxModel>(QueryIntegerProperty<TModel> prop) =>
      switch (this) {
        IntEquals ie => prop.equals(ie.input),
        IntLessThan ilt => prop.lessThan(ilt.input),
        IntGreaterThan igt => prop.greaterThan(igt.input),
        _ => null,
      };
}

extension DateTimeFilterExtension on DateTimeFilter? {
  Condition<TModel>? using<TModel extends IBoxModel>(QueryDateProperty<TModel> prop) =>
      switch (this) {
        DateTimeEquals dte => prop.equalsDate(dte.input),
        DateTimeBeforeThan dtb => prop.lessThanDate(dtb.input),
        DateTimeAfterThan dta => prop.greaterThanDate(dta.input),
        _ => null,
      };
}

extension MoneyFilterExtension on MoneyFilter? {
  Condition<TModel>? using<TModel extends IBoxModel>(
    QueryIntegerProperty<TModel> amountProp,
    QueryIntegerProperty<TModel> currencyProp,
  ) {
    final filter = switch (this) {
      MoneyEquals me => amountProp.equals(Money.toScaledInt(me.amount)),
      MoneyLessThan ml => amountProp.lessThan(Money.toScaledInt(ml.amount)),
      MoneyGreaterThan mg => amountProp.greaterThan(Money.toScaledInt(mg.amount)),
      _ => null,
    };

    return switch (this?.currency) {
      int c => filter?.and(currencyProp.equals(c)),
      _ => filter,
    };
  }
}

extension OrderByExtension on OrderBy? {
  OrderProp<TModel>? using<TModel extends IBoxModel>(QueryProperty<TModel, dynamic> prop) =>
      switch (this?.way) {
        OrderWay.asc => (prop: prop, flag: 0),
        OrderWay.desc => (prop: prop, flag: 1),
        _ => null,
      };
}
