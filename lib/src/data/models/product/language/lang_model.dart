part of '../product.dart';

class Lang {
  Lang({
    required this.uz,
    required this.en,
    required this.ru,
  });

  factory Lang.fromJson(Map<String, Object?> json) => Lang(
        uz: (json['uz'] ?? '') as String,
        en: (json['en'] ?? '') as String,
        ru: (json['ru'] ?? '') as String,
      );

  String uz;
  String ru;
  String en;

  String currentLang(String lang) =>
      switch (lang) { 'uz' => uz, 'en' => en, 'ru' => ru, _ => '' };

  Map<String, Object?> toJson() => {
        'uz': uz,
        'en': en,
        'ru': ru,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Lang &&
          runtimeType == other.runtimeType &&
          uz == other.uz &&
          ru == other.ru &&
          en == other.en;

  @override
  int get hashCode => uz.hashCode ^ ru.hashCode ^ en.hashCode;

  @override
  String toString() => 'Lang{uz: $uz, ru: $ru, en: $en}';
}
