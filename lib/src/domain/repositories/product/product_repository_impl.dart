import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ploff_kebab/src/core/constants/api_queries.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/data/models/product/favorite/base_favorite.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/repositories/product/product_repository.dart';

import '../../../core/constants/constants.dart';
import '../../../data/models/product/product.dart';
import '../../failure/server_error.dart';

class ProductRepositoryImpl implements ProductRepository {
  const ProductRepositoryImpl({required this.dio});

  final Dio dio;

  @override
  Future<Either<Failure, BaseBanner>> getBanner() async {
    try {
      final Response response = await dio.get(
        Constants.baseUrl + Urls.banner,
      );
      return Right(BaseBanner.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }

  @override
  Future<Either<Failure, BaseCategoryWithProduct>>
      getCategoryWithProduct() async {
    try {
      final Response response = await dio.get(
        Constants.baseUrl + Urls.categoryWithProduct,
      );
      return Right(BaseCategoryWithProduct.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }

  @override
  Future<Either<Failure, ProductDetail>> getProduct(String productId) async {
    try {
      final Response response = await dio.get(
        Constants.baseUrl + Urls.product(productId),
        queryParameters: ApiQuery.productQuery(
          withDiscounts: true,
          onlyDelivery: true,
          onlySelfPickup: false,
          orderSource: AppKeys.platform,
        ),
      );
      return Right(ProductDetail.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }
  @override
  Future<Either<Failure, BaseFavorite>> getFavorites(String productId) async {
    try {
      final Response response = await dio.get(
        Constants.baseUrl + Urls.productFavourites,
        queryParameters: ApiQuery.favoriteQuery(
          productIds: productId,
          withDiscounts: true,
          onlyDelivery: true,
          onlySelfPickup: false,
          orderSource: AppKeys.platform,
        ),
      );
      return Right(BaseFavorite.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }
}
