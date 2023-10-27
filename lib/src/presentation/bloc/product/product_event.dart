part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();
}

class ProductGetEvent extends ProductEvent {
  const ProductGetEvent();

  @override
  List<Object?> get props => [];
}

class ProductSearchEvent extends ProductEvent {
  const ProductSearchEvent({required this.lang, required this.search});

  final String search;
  final String lang;

  @override
  List<Object?> get props => [search, lang];
}
