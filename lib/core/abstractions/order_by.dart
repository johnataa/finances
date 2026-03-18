enum OrderWay { asc, desc }

abstract interface class IOrderField {}

final class OrderBy<TEnum extends IOrderField> {
  final TEnum field;
  final OrderWay way;

  const OrderBy(this.field, [this.way = OrderWay.asc]);
}

extension OrderFieldExtension<T extends IOrderField> on T {
  OrderBy<T> get asc => OrderBy(this, OrderWay.asc);
  OrderBy<T> get desc => OrderBy(this, OrderWay.desc);
}
