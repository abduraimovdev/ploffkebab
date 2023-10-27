class BaseFavorite {
  BaseFavorite({
    required this.favorites,
  });

  factory BaseFavorite.fromJson(Map<String, Object?> map) => BaseFavorite(
        favorites: (map['favorites'] ?? []) as List,
      );

  List favorites;

  Map<String, Object?> toJson() => {
        'favorites': favorites,
      };

  @override
  String toString() => 'BaseFavorite{favorites: $favorites}';
}
