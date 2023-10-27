part of 'detail_bloc.dart';

enum DetailStatus {
  initial,
  success,
  error,
}

class DetailState extends Equatable {
  const DetailState({
    required this.status,
    this.favorites,
    this.detail,
  });

  final ProductDetail? detail;
  final BaseFavorite? favorites;
  final DetailStatus status;

  @override
  List<Object?> get props => [status, detail];

  DetailState copyWith({
    ProductDetail? detail,
    BaseFavorite? favorites,
    DetailStatus? status,
  }) =>
      DetailState(
        detail: detail ?? this.detail,
        favorites: favorites ?? this.favorites,
        status: status ?? this.status,
      );
}
