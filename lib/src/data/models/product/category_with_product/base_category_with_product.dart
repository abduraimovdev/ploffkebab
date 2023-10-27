part of '../product.dart';

class BaseCategoryWithProduct {
  BaseCategoryWithProduct({
    required this.categories,
    required this.count,
  });

  factory BaseCategoryWithProduct.fromJson(Map<String, Object?> map) =>
      BaseCategoryWithProduct(
        categories: ((map['categories'] ?? []) as List)
            .map((e) => CategoryWithProduct.fromJson(e))
            .toList(),
        count: map['count']! as String,
      );

  List<CategoryWithProduct> categories;
  String count;

  Map<String, dynamic> toJson() => {
        'categories': categories.map((e) => e.toJson()).toList(),
        'count': count,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseCategoryWithProduct &&
          runtimeType == other.runtimeType &&
          categories == other.categories &&
          count == other.count;

  @override
  int get hashCode => categories.hashCode ^ count.hashCode;

  @override
  String toString() =>
      'BaseCategoryWithProduct{categories: $categories, count: $count}';
}
