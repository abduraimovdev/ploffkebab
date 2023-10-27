import 'package:ploff_kebab/src/domain/failure/failure.dart';

import '../../../core/either_dart/either.dart';
import '../../../data/models/product/favorite/base_favorite.dart';
import '../../../data/models/product/product.dart';

abstract interface class ProductRepository {
  Future<Either<Failure, BaseBanner>> getBanner();

  Future<Either<Failure, BaseCategoryWithProduct>> getCategoryWithProduct();

  Future<Either<Failure, ProductDetail>> getProduct(String productId);

  Future<Either<Failure, BaseFavorite>> getFavorites(String productId);
}
