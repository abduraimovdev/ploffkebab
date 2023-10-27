part of '../../product.dart';

class BrandModel {
  const BrandModel({
    required this.id,
    required this.slug,
    required this.parentId,
    required this.image,
    required this.description,
    required this.title,
    required this.orderNo,
    required this.isActive,
  });

  factory BrandModel.fromJson(Map<String, Object?> map) => BrandModel(
        id: map['id']! as String,
        slug: map['slug']! as String,
        parentId: map['parent_id']! as String,
        image: map['image']! as String,
        description: Lang.fromJson(map['description']! as Map<String, dynamic>),
        title: Lang.fromJson(map['title']! as Map<String, dynamic>),
        orderNo: map['order_no']! as String,
        isActive: map['is_active']! as bool,
      );
  final String id;
  final String slug;
  final String parentId;
  final String image;
  final Lang description;
  final Lang title;
  final String orderNo;
  final bool isActive;

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'parent_id': parentId,
        'image': image,
        'description': description,
        'title': title,
        'order_no': orderNo,
        'is_active': isActive,
      };
}
