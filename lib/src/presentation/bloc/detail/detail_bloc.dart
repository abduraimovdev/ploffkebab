import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/product/favorite/base_favorite.dart';
import '../../../data/models/product/product.dart';
import '../../../domain/repositories/product/product_repository.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc({required this.repository})
      : super(const DetailState(status: DetailStatus.initial)) {
    on<DetailGetProductEvent>(_getProduct);
    on<DetailClearProductEvent>(_clear);
  }

  final ProductRepository repository;

  Future<void> _getProduct(DetailGetProductEvent event, Emitter emit) async {
    final productDetail = await repository.getProduct(event.productId);
    final favorites = await repository.getFavorites(event.productId);
    if (productDetail.isRight && favorites.isRight) {
      emit(state.copyWith(
        status: DetailStatus.success,
        detail: productDetail.right,
        favorites: favorites.right,
      ));
    } else {
      emit(state.copyWith(status: DetailStatus.error));
    }
  }

  void _clear(DetailClearProductEvent event, Emitter emit) {
    emit(const DetailState(status: DetailStatus.initial));
  }
}
