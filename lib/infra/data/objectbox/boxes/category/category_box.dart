import 'package:flutter/foundation.dart' show protected;

import '../../../../../features/shared/base_account/category/category.dart';
import '../../../../../features/shared/base_account/category/category.repository.dart';
import '../../../../../features/shared/base_account/category/category_filter.dart';
import '../../gen/objectbox.g.dart';
import '../base/base_box.dart';
import 'category_box_model.dart';

final class CategoryBox
    extends BaseBox<CategoryBM, Category, CategoryFilter, CategorySort>
    implements CategoryRepository {
  CategoryBox(super.store);

  @override
  Future<Category> persist(Category category) async {
    final model = await super.persistAsync(CategoryBM.fromEntity(category));
    return category.copyWith.meta(
      id: model.id,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  @override
  @protected
  QueryBuilder<CategoryBM> queryBuilder(CategoryFilter? filter, CategorySort? sort) {
    final conditions = [
      stringFilter(filter?.name, CategoryBM_.name),
      metaFilter(
        filter?.meta,
        CategoryBM_.id,
        CategoryBM_.createdAt,
        CategoryBM_.updatedAt,
      ),
    ];

    final sortBy = sort?.map(
      name: (s) => super.sortBy(CategoryBM_.id, s.desc),
      meta: (s) => super.sortByMeta(
        CategoryBM_.id,
        CategoryBM_.createdAt,
        CategoryBM_.updatedAt,
        s.metaSort,
      ),
    );

    return super.filter(filter?.logic, conditions, sortBy);
  }
}
