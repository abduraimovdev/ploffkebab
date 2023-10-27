part of '../product.dart';

class BaseBanner {
  BaseBanner({
    required this.banners,
    required this.count,
  });

  factory BaseBanner.fromJson(Map<String, Object?> map) => BaseBanner(
        banners: ((map['banners'] ?? []) as List)
            .map((e) => BannerModel.fromJson(e))
            .toList(),
        count: (map['count'] ?? '') as String,
      );

  List<BannerModel> banners;
  String count;

  Map<String, Object?> toJson() => {
        'banners': banners.map((e) => e.toJson()).toList(),
        'count': count,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseBanner &&
          runtimeType == other.runtimeType &&
          banners == other.banners &&
          count == other.count;

  @override
  int get hashCode => banners.hashCode ^ count.hashCode;

  @override
  String toString() => 'BaseBanner{banners: $banners, count: $count}';
}
