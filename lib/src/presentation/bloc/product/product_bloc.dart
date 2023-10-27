import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/data/models/product/product.dart';

import '../../../domain/repositories/product/product_repository.dart';

part 'product_event.dart';

part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({required this.repository})
      : super(const ProductState(
            status: ProductStatus.initial, findProduct: [])) {
    on<ProductGetEvent>(_getData);
    on<ProductSearchEvent>(_searchProduct);
  }

  final ProductRepository repository;

  Future<void> _getData(ProductGetEvent event, Emitter emit) async {
    final banner = await repository.getBanner();
    final categoryWithProduct = await repository.getCategoryWithProduct();
    if (banner.isRight && categoryWithProduct.isRight) {
      emit(state.copyWith(
        status: ProductStatus.successData,
        banner: banner.right,
        categoryWithProduct: categoryWithProduct.right,
      ));
    } else {
      emit(state.copyWith(status: ProductStatus.errorData, message: 'Error'));
    }
  }

  Future<void> _searchProduct(ProductSearchEvent event, Emitter emit) async {
    final categories = state.categoryWithProduct?.categories;
    if (categories == null) {
      emit(state.copyWith(
          status: ProductStatus.searchErrorData, message: 'Not Found Product'));
    } else {
      final List<ProductModel> findProducts = [];
      for (final item in categories) {
        for (final product in item.products) {
          if (product.title
              .currentLang(event.lang)
              .toLowerCase()
              .contains(event.search.toLowerCase())) {
            findProducts.add(product);
          } else if (product.description
              .currentLang(event.lang)
              .toLowerCase()
              .contains(event.search.toLowerCase())) {
            findProducts.add(product);
          }
        }
      }
      if (findProducts.isNotEmpty) {
        print(
            '---------------------------------------------------------------------------');
        print('Ishladi');

        emit(
          state.copyWith(
              status: ProductStatus.searchSuccessData,
              findProduct: findProducts),
        );
      } else {
        emit(
          state.copyWith(
              status: ProductStatus.searchErrorData,
              message: 'You Was Say Product Not Found'),
        );
      }
    }
  }
}
