import '../../../../core/domain/base/base.dart';
import 'box_model.dart';

final class BaseMapper {
  static Base toEntity(IBoxModel model, {int? id}) =>
      .create(id: id ?? model.id, createdAt: model.createdAt, updatedAt: model.updatedAt);
}
