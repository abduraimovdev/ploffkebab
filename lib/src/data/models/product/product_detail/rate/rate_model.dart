part of '../../product.dart';

class RateModel {
  const RateModel({
    required this.id,
    required this.slug,
    required this.code,
    required this.rateAmount,
    required this.title,
  });

  factory RateModel.fromJson(Map<String, Object?> map) => RateModel(
    id: map['id']! as String,
    slug: map['slug']! as String,
    code: map['code']! as String,
    rateAmount: map['rate_amount']! as String,
    title: map['title']! as String,
  );

  final String id;
  final String slug;
  final String code;
  final String rateAmount;
  final String title;

  Map<String, Object?> toJson() => {
    'id': id,
    'slug': slug,
    'code': code,
    'rate_amount': rateAmount,
    'title': title,
  };

  @override
  String toString() =>
      'RateModel{id: $id, slug: $slug, code: $code, rateAmount: $rateAmount, title: $title}';
}
