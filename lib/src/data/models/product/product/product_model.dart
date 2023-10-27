part of '../product.dart';

class ProductModel {
  ProductModel({
    required this.id,
    required this.outPrice,
    required this.currency,
    required this.string,
    required this.type,
    required this.categories,
    required this.brandId,
    required this.rateId,
    required this.image,
    required this.activeInMenu,
    required this.hasModifier,
    required this.fromTime,
    required this.toTime,
    required this.offAlways,
    required this.title,
    required this.description,
    required this.active,
    required this.iikoId,
    required this.jowiId,
    this.gallery,
    this.discounts,
  });

  factory ProductModel.fromJson(Map<String, Object?> map) => ProductModel(
        id: map['id']! as String,
        outPrice: map['out_price']! as num,
        currency: map['currency']! as String,
        string: map['string']! as String,
        type: map['type']! as String,
        categories: List.from(map['categories']! as List),
        brandId: map['brand_id']! as String,
        rateId: map['rate_id']! as String,
        image: map['image']! as String,
        activeInMenu: map['active_in_menu']! as bool,
        hasModifier: map['has_modifier']! as bool,
        fromTime: map['from_time']! as String,
        toTime: map['to_time']! as String,
        offAlways: map['off_always']! as bool,
        gallery: map['gallery'],
        title: Lang.fromJson(map['title']! as Map<String, Object?>),
        description: Lang.fromJson(map['description']! as Map<String, Object?>),
        active: map['active']! as bool,
        iikoId: map['iiko_id']! as String,
        jowiId: map['jowi_id']! as String,
        discounts: map['discounts'],
      );
  String id;
  num outPrice;
  String currency;
  String string;
  String type;
  List<String> categories;
  String brandId;
  String rateId;
  String image;
  bool activeInMenu;
  bool hasModifier;
  String fromTime;
  String toTime;
  bool offAlways;
  Object? gallery;
  Lang title;
  Lang description;
  bool active;
  String iikoId;
  String jowiId;
  Object? discounts;

  Map<String, dynamic> toJson() => {
        'id': id,
        'out_price': outPrice,
        'currency': currency,
        'string': string,
        'type': type,
        'categories': categories,
        'brand_id': brandId,
        'rate_id': rateId,
        'image': image,
        'active_in_menu': activeInMenu,
        'has_modifier': hasModifier,
        'from_time': fromTime,
        'to_time': toTime,
        'off_always': offAlways,
        'gallery': gallery,
        'title': title.toJson(),
        'description': description.toJson(),
        'active': active,
        'iiko_id': iikoId,
        'jowi_id': jowiId,
        'discounts': discounts,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          outPrice == other.outPrice &&
          currency == other.currency &&
          string == other.string &&
          type == other.type &&
          categories == other.categories &&
          brandId == other.brandId &&
          rateId == other.rateId &&
          image == other.image &&
          activeInMenu == other.activeInMenu &&
          hasModifier == other.hasModifier &&
          fromTime == other.fromTime &&
          toTime == other.toTime &&
          offAlways == other.offAlways &&
          gallery == other.gallery &&
          title == other.title &&
          description == other.description &&
          active == other.active &&
          iikoId == other.iikoId &&
          jowiId == other.jowiId &&
          discounts == other.discounts;

  @override
  int get hashCode =>
      id.hashCode ^
      outPrice.hashCode ^
      currency.hashCode ^
      string.hashCode ^
      type.hashCode ^
      categories.hashCode ^
      brandId.hashCode ^
      rateId.hashCode ^
      image.hashCode ^
      activeInMenu.hashCode ^
      hasModifier.hashCode ^
      fromTime.hashCode ^
      toTime.hashCode ^
      offAlways.hashCode ^
      gallery.hashCode ^
      title.hashCode ^
      description.hashCode ^
      active.hashCode ^
      iikoId.hashCode ^
      jowiId.hashCode ^
      discounts.hashCode;

  @override
  String toString() =>
      'ProductModel{id: $id, outPrice: $outPrice, currency: $currency, string: $string, type: $type, categories: $categories, brandId: $brandId, rateId: $rateId, image: $image, activeInMenu: $activeInMenu, hasModifier: $hasModifier, fromTime: $fromTime, toTime: $toTime, offAlways: $offAlways, gallery: $gallery, title: $title, description: $description, active: $active, iikoId: $iikoId, jowiId: $jowiId, discounts: $discounts}';
}

