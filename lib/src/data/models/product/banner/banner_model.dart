part of '../product.dart';

class BannerModel {
  BannerModel({
    required this.id,
    required this.title,
    required this.position,
    required this.image,
    required this.url,
    required this.active,
    required this.createdAt,
    required this.updatedAt,
    required this.shipperId,
    required this.about,
  });

  factory BannerModel.fromJson(Map<String, Object?> map) => BannerModel(
        id: (map['id'] ?? '') as String,
        title: Lang.fromJson((map['title'] ?? {}) as Map<String, Object?>),
        position: (map['position'] ?? '') as String,
        image: (map['image'] ?? '') as String,
        url: (map['url'] ?? '') as String,
        active: (map['active'] ?? false) as bool,
        updatedAt: (map['updated_at'] ?? '') as String,
        createdAt: (map['created_at'] ?? '') as String,
        shipperId: (map['shipper_id'] ?? '') as String,
        about: (map['about'] ?? '') as String,
      );

  String id;
  Lang title;
  String position;
  String image;
  String url;
  bool active;
  String createdAt;
  String updatedAt;
  String shipperId;
  String about;

  Map<String, Object?> toJson() => {
        'id': id,
        'title': title.toJson(),
        'position': position,
        'image': image,
        'url': url,
        'active': active,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'shipper_id': shipperId,
        'about': about,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BannerModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          position == other.position &&
          image == other.image &&
          url == other.url &&
          active == other.active &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          shipperId == other.shipperId &&
          about == other.about;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      position.hashCode ^
      image.hashCode ^
      url.hashCode ^
      active.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      shipperId.hashCode ^
      about.hashCode;

  @override
  String toString() =>
      'BannerModel{id: $id, title: $title, position: $position, image: $image, url: $url, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, shipperId: $shipperId, about: $about}';
}
