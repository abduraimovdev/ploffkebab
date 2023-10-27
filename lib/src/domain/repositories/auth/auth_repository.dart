import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/data/models/auth/send_message_request.dart';
import 'package:ploff_kebab/src/data/models/auth/send_message_response.dart';
import 'package:ploff_kebab/src/data/models/auth/verify_request.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/failure/server_error.dart';

part 'auth_repository_impl.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<Either<Failure, SendMessageResponse>> codeMessage({
    required SendMessageRequest request,
  });

  Future<Either<Failure, SendMessageResponse>> verifySmsCode({
    required VerifyRequest request,
    required String smsId,
    required String otp,
  });
}
