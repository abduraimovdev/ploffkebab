part of '../product.dart';

class CategoryWithProduct {
  CategoryWithProduct({
    required this.id,
    required this.slug,
    required this.parentId,
    required this.image,
    required this.description,
    required this.title,
    required this.orderNo,
    required this.active,
    required this.products,
    this.childCategories,
  });

  factory CategoryWithProduct.fromJson(Map<String, Object?> map) =>
      CategoryWithProduct(
        id: map['id']! as String,
        slug: map['slug']! as String,
        parentId: map['parent_id']! as String,
        image: map['image']! as String,
        description: Lang.fromJson(map['description']! as Map<String, Object?>),
        title: Lang.fromJson(map['title']! as Map<String, Object?>),
        orderNo: map['order_no']! as String,
        active: map['active']! as bool,
        products: map['products'] == null
            ? []
            : ((map['products'] ?? []) as List)
                .map((e) => ProductModel.fromJson(e))
                .toList(),
        childCategories: map['child_categories'],
      );

  String id;
  String slug;
  String parentId;
  String image;
  Lang description;
  Lang title;
  String orderNo;
  bool active;
  List<ProductModel> products;
  Object? childCategories;

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'parent_id': parentId,
        'image': image,
        'description': description.toJson(),
        'title': title.toJson(),
        'order_no': orderNo,
        'active': active,
        'products': products.map((e) => e.toJson()).toList(),
        'child_categories': childCategories,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryWithProduct &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          slug == other.slug &&
          parentId == other.parentId &&
          image == other.image &&
          description == other.description &&
          title == other.title &&
          orderNo == other.orderNo &&
          active == other.active &&
          products == other.products &&
          childCategories == other.childCategories;

  @override
  int get hashCode =>
      id.hashCode ^
      slug.hashCode ^
      parentId.hashCode ^
      image.hashCode ^
      description.hashCode ^
      title.hashCode ^
      orderNo.hashCode ^
      active.hashCode ^
      products.hashCode ^
      childCategories.hashCode;

  @override
  String toString() =>
      'CategoryWithProduct{id: $id, slug: $slug, parentId: $parentId, image: $image, description: $description, title: $title, orderNo: $orderNo, active: $active, products: $products, childCategories: $childCategories}';
}
