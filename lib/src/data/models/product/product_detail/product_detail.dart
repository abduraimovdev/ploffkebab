part of '../product.dart';

class ProductDetail {
  const ProductDetail({
    required this.active,
    required this.isDivisible,
    required this.hasModifier,
    required this.order,
    required this.inPrice,
    required this.outPrice,
    required this.currency,
    required this.count,
    required this.id,
    required this.slug,
    required this.image,
    required this.code,
    required this.iikoId,
    required this.jowiId,
    required this.description,
    required this.title,
    required this.brand,
    required this.rate,
    required this.activeInMenu,
    required this.fromTime,
    required this.toTime,
    required this.offAlways,
    required this.categories,
    required this.tags,
    required this.productProperty,
    required this.properties,
    required this.variantProducts,
    required this.type,
    required this.addToOrder,
    required this.defaultQuantity,
    this.gallery,
    this.favorites,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> map) => ProductDetail(
        active: map['active'] as bool,
        isDivisible: map['is_divisible'] as bool,
        hasModifier: map['has_modifier'] as bool,
        order: map['order'] as String,
        inPrice: map['in_price'] as num,
        outPrice: map['out_price'] as num,
        currency: map['currency'] as String,
        count: map['count'] as String,
        id: map['id'] as String,
        slug: map['slug'] as String,
        image: map['image'] as String,
        code: map['code'] as String,
        gallery: map['gallery'] as List,
        iikoId: map['iiko_id'] as String,
        jowiId: map['jowi_id'] as String,
        description: Lang.fromJson(map['description']),
        title: Lang.fromJson(map['title']),
        brand: BrandModel.fromJson(map['brand']),
        rate: RateModel.fromJson(map['rate']),
        activeInMenu: map['active_in_menu'] as bool,
        fromTime: map['from_time'] as String,
        toTime: map['to_time'] as String,
        offAlways: map['off_always'] as bool,
        favorites: map['favorites'],
        categories: (map['categories'] as List)
            .map((e) => CategoryWithProduct.fromJson(e))
            .toList(),
        tags: map['tags'] as List,
        productProperty: map['product_property'] as List,
        properties: map['properties'] as List,
        variantProducts: map['variant_products'] as List,
        type: map['type'] as String,
        addToOrder: map['add_to_order'] as bool,
        defaultQuantity: map['default_quantity'] as int,
      );
  final bool active;
  final bool isDivisible;
  final bool hasModifier;
  final String order;
  final num inPrice;
  final num outPrice;
  final String currency;
  final String count;
  final String id;
  final String slug;
  final String image;
  final String code;
  final List? gallery;
  final String iikoId;
  final String jowiId;
  final Lang description;
  final Lang title;
  final BrandModel brand;
  final RateModel rate;
  final bool activeInMenu;
  final String fromTime;
  final String toTime;
  final bool offAlways;
  final List? favorites;
  final List<CategoryWithProduct> categories;
  final List tags;
  final List productProperty;
  final List properties;
  final List variantProducts;
  final String type;
  final bool addToOrder;
  final int defaultQuantity;

  Map<String, dynamic> toJson() => {
        'active': active,
        'is_divisible': isDivisible,
        'has_modifier': hasModifier,
        'order': order,
        'in_price': inPrice,
        'out_price': outPrice,
        'currency': currency,
        'count': count,
        'id': id,
        'slug': slug,
        'image': image,
        'code': code,
        'gallery': gallery,
        'iiko_id': iikoId,
        'jowi_id': jowiId,
        'description': description.toJson(),
        'title': title.toJson(),
        'brand': brand.toJson(),
        'rate': rate.toJson(),
        'active_in_menu': activeInMenu,
        'from_time': fromTime,
        'to_time': toTime,
        'off_always': offAlways,
        'favorites': favorites,
        'categories': categories.map((e) => e.toJson()).toList(),
        'tags': tags,
        'product_property': productProperty,
        'properties': properties,
        'variant_products': variantProducts,
        'type': type,
        'add_to_order': addToOrder,
        'default_quantity': defaultQuantity,
      };

  @override
  String toString() =>
      'ProductDetail{active: $active, isDivisible: $isDivisible, hasModifier: $hasModifier, order: $order, inPrice: $inPrice, outPrice: $outPrice, currency: $currency, count: $count, id: $id, slug: $slug, image: $image, code: $code, gallery: $gallery, iikoId: $iikoId, jowiId: $jowiId, description: $description, title: $title, brand: $brand, rate: $rate, activeInMenu: $activeInMenu, fromTime: $fromTime, toTime: $toTime, offAlways: $offAlways, favorites: $favorites, categories: $categories, tags: $tags, productProperty: $productProperty, properties: $properties, variantProducts: $variantProducts, type: $type, addToOrder: $addToOrder, defaultQuantity: $defaultQuantity}';
}

