import 'package:flutter/foundation.dart' hide Category;

import '../../../../features/category/category.dart';
import '../../../../features/category/category.query.dart';
import '../../../../features/category/category.repository.dart';
import '../../../../shared/abstractions/order_by.dart';
import '../gen/objectbox.g.dart';
import '../shared/base_box.dart';
import '../shared/query_parser.dart';
import 'category_box.model.dart';

final class CategoryBox
    extends BaseBox<CategoryBM, Category, CategoryFilter, OrderBy<CategoryField>>
    implements ICategoryRepository {
  CategoryBox(super.store, super.mapper);

  @override
  @protected
  QueryParser<CategoryBM> parseQuery(CategoryFilter? filter, OrderBy<CategoryField>? orderBy) =>
      QueryParser(
        filter?.logic,
        [
          filter?.id.using(CategoryBM_.id),
          filter?.name.using(CategoryBM_.name),
          filter?.createdAt.using(CategoryBM_.createdAt),
          filter?.updatedAt.using(CategoryBM_.updatedAt),
        ],
        switch (orderBy?.field) {
          .id => orderBy.using(CategoryBM_.id),
          .name => orderBy.using(CategoryBM_.name),
          .createdAt => orderBy.using(CategoryBM_.createdAt),
          .updatedAt => orderBy.using(CategoryBM_.updatedAt),
          _ => null,
        },
      );
}
