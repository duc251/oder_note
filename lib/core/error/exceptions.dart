import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:oder_note/core/error/failure.dart';
import 'package:oder_note/core/globals/logger.dart';
 

class ServerException implements Exception {}

class CacheException implements Exception {}

mixin HandleApiException {
  static Failure handleError(Object e) {
    switch (e.runtimeType) {
      case DioError:
        // Here's the sample to get the failed response error code and message
        final res = (e as DioError).response;
        Logger.info(
          "Got error : $res -> ${res?.statusCode} -> ${res?.statusMessage}",
        );
        if (res?.statusCode == 504) {
          return Failure.server("Gateway Time-out");
        }
        if (res?.statusCode == 502) {
          return Failure.server("Bad Gateway");
        }
        var data = res?.data;
        if (data == null || (data is String && data.isEmpty)) {
          return Failure.server("Server response empty!");
        }
        if (res?.statusCode != 400 && data is String && data.isNotEmpty) {
          return Failure.server(data);
        }
        try {
          if (data is String) {
            data = jsonDecode(data);
          }
          final message = data["message"];
          final errorMessage = data["errorMessage"];
          if (message is String && message.isNotEmpty) {
            return Failure.server(message);
          }
          if (errorMessage is String && errorMessage.isNotEmpty) {
            return Failure.server(errorMessage);
          }
          final statusMessage = res?.statusMessage;
          if (statusMessage != null && statusMessage.isNotEmpty) {
            return Failure.server(statusMessage);
          }
        } catch (e) {}
        return Failure.server(
          "${res?.data["message"] ?? res?.data["errorMessage"]}",
        );
      default:
        Logger.info("Got server error : ${e.toString()}");
        return Failure.server(e.toString());
    }
  }
}
