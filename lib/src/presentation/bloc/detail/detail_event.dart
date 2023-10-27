part of 'detail_bloc.dart';

abstract class DetailEvent extends Equatable {
  const DetailEvent();
}

class DetailGetProductEvent extends DetailEvent {
  const DetailGetProductEvent({required this.productId});

  final String productId;

  @override
  List<Object?> get props => [productId];
}

class DetailClearProductEvent extends DetailEvent {
  const DetailClearProductEvent();

  @override
  List<Object?> get props => [];
}
