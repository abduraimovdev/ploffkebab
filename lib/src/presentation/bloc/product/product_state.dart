part of 'product_bloc.dart';

enum ProductStatus {
  initial,
  successData,
  searchSuccessData,
  searchErrorData,
  errorData,
}

class ProductState extends Equatable {
  const ProductState({
    required this.findProduct,
    required this.status,
    this.categoryWithProduct,
    this.banner,
    this.message,
  });

  final BaseCategoryWithProduct? categoryWithProduct;
  final BaseBanner? banner;
  final String? message;
  final List<ProductModel> findProduct;
  final ProductStatus status;

  ProductState copyWith({
    BaseCategoryWithProduct? categoryWithProduct,
    BaseBanner? banner,
    String? message,
    List<ProductModel>? findProduct,
    ProductStatus? status,
  }) =>
      ProductState(
        categoryWithProduct: categoryWithProduct ?? this.categoryWithProduct,
        banner: banner ?? this.banner,
        message: message ?? this.message,
        findProduct: findProduct ?? this.findProduct,
        status: status ?? this.status,
      );

  @override
  List<Object?> get props => [
        status,
        categoryWithProduct,
        banner,
        message,
        findProduct,
      ];
}
