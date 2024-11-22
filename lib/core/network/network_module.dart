import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';
import 'package:oder_note/core/network/data_connection_checker.dart';
import 'package:oder_note/core/utils/apis.dart';
import 'package:oder_note/flavors/build_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class NetworkModule {
  @injectable
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  @injectable
  @Named(Apis.dioWithoutToken)
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: BuildConfig.instance.envConfig.baseUrl,
          headers: {
            'Content-Type': 'application/json',
          },
          connectTimeout: BuildConfig.instance.envConfig.timeOut,
          receiveTimeout: BuildConfig.instance.envConfig.timeOut,
        ),
      )..interceptors.add(
          LogInterceptor(
            responseBody: true,
            requestBody: true,
          ),
        );

  @injectable
  @Named(Apis.dioWithToken)
  Dio dioWithToken(SharedPreferences sharedPreferences) => Dio(
        BaseOptions(
          baseUrl: BuildConfig.instance.envConfig.baseUrl,
          headers: {
            'Content-Type': 'application/json',
            // 'authorization':
            //     'Bearer ${sharedPreferences.get(Definition.tokenKey)}'
          },
          connectTimeout: BuildConfig.instance.envConfig.timeOut,
          receiveTimeout: BuildConfig.instance.envConfig.timeOut,
        ),
      )..interceptors.addAll(
          [
            InterceptorsWrapper(
              // onRequest: (request, handler) {
              //   final token = sharedPreferences.get(Definition.tokenKey);
              //   if (token != null && token != '') {
              //     request.headers['Authorization'] = 'Bearer $token';
              //   }
              //   return handler.next(request);
              // },
              onResponse: (response, handler) {
                // Do something with response data
                return handler.next(response); // continue
                // If you want to reject the request with a error message,
                // you can reject a `DioError` object eg: return `dio.reject(dioError)`
              },
              onError: (DioError e, handler) {
                // Do something with response error
                return handler.next(e); //continue
                // If you want to resolve the request with some custom data，
                // you can resolve a `Response` object eg: return `dio.resolve(response)`.
              },
            ),
            LogInterceptor(
              responseBody: true,
              requestBody: true,
            ),
          ],
        );

  // @injectable
  // @Named(Apis.dioWithBiometricsToken)
  // Dio dioWithBiometricsToken(SharedPreferences sharedPreferences) => Dio(
  //       BaseOptions(
  //         baseUrl: BuildConfig.instance.envConfig.baseUrl,
  //         headers: {
  //           'Content-Type': 'application/json',
  //           'authorization':
  //               'Bearer ${sharedPreferences.get(Definition.biometricsTokenKey)}'
  //         },
  //         connectTimeout: BuildConfig.instance.envConfig.timeOutMilliseconds,
  //         receiveTimeout: BuildConfig.instance.envConfig.timeOutMilliseconds,
  //       ),
  //     )..interceptors.addAll(
  //         [
  //           InterceptorsWrapper(
  //             onRequest: (request, handler) {
  //               final token =
  //                   sharedPreferences.get(Definition.biometricsTokenKey);
  //               if (token != null && token != '') {
  //                 request.headers['Authorization'] = 'Bearer $token';
  //               }
  //               return handler.next(request);
  //             },
  //             onResponse: (response, handler) {
  //               // Do something with response data
  //               return handler.next(response); // continue
  //               // If you want to reject the request with a error message,
  //               // you can reject a `DioError` object eg: return `dio.reject(dioError)`
  //             },
  //             onError: (DioError e, handler) {
  //               // Do something with response error
  //               return handler.next(e); //continue
  //               // If you want to resolve the request with some custom data，
  //               // you can resolve a `Response` object eg: return `dio.resolve(response)`.
  //             },
  //           ),
  //           LogInterceptor(
  //             responseBody: true,
  //             requestBody: true,
  //           ),
  //         ],
  //       );

  @injectable
  @Named(Apis.dioWithRememberToken)
  Dio dioWithRememberToken(SharedPreferences sharedPreferences) => Dio(
        BaseOptions(
          baseUrl: BuildConfig.instance.envConfig.baseUrl,
          headers: {
            'Content-Type': 'application/json',
            // 'authorization':
            //     'Bearer ${sharedPreferences.get(Definition.rememberTokenKey)}'
          },
          connectTimeout: BuildConfig.instance.envConfig.timeOut,
          receiveTimeout: BuildConfig.instance.envConfig.timeOut,
        ),
      )..interceptors.addAll(
          [
            InterceptorsWrapper(
              // onRequest: (request, handler) {
              //   final token =
              //       sharedPreferences.get(Definition.rememberTokenKey);
              //   if (token != null && token != '') {
              //     request.headers['Authorization'] = 'Bearer $token';
              //   }
              //   return handler.next(request);
              // },
              onResponse: (response, handler) {
                // Do something with response data
                return handler.next(response); // continue
                // If you want to reject the request with a error message,
                // you can reject a `DioError` object eg: return `dio.reject(dioError)`
              },
              onError: (DioError e, handler) {
                // Do something with response error
                return handler.next(e); //continue
                // If you want to resolve the request with some custom data，
                // you can resolve a `Response` object eg: return `dio.resolve(response)`.
              },
            ),
            LogInterceptor(
              responseBody: true,
              requestBody: true,
            ),
          ],
        );

  // @injectable
  // @Named(Apis.dioWebWithToken)
  // Dio dioWebWithToken(SharedPreferences sharedPreferences) => Dio(
  //       BaseOptions(
  //         baseUrl: BuildConfig.instance.envConfig.hostWeb,
  //         headers: {
  //           'Content-Type': 'application/json',
  //           'authorization':
  //               'Bearer ${sharedPreferences.get(Definition.tokenKey)}'
  //         },
  //         connectTimeout: BuildConfig.instance.envConfig.timeOutMilliseconds,
  //         receiveTimeout: BuildConfig.instance.envConfig.timeOutMilliseconds,
  //       ),
  //     )..interceptors.addAll(
  //         [
  //           InterceptorsWrapper(
  //             onRequest: (request, handler) {
  //               final token = sharedPreferences.get(Definition.tokenKey);
  //               if (token != null && token != '') {
  //                 request.headers['Authorization'] = 'Bearer $token';
  //               }
  //               return handler.next(request);
  //             },
  //             onResponse: (response, handler) {
  //               // Do something with response data
  //               return handler.next(response); // continue
  //               // If you want to reject the request with a error message,
  //               // you can reject a `DioError` object eg: return `dio.reject(dioError)`
  //             },
  //             onError: (DioError e, handler) {
  //               // Do something with response error
  //               return handler.next(e); //continue
  //               // If you want to resolve the request with some custom data，
  //               // you can resolve a `Response` object eg: return `dio.resolve(response)`.
  //             },
  //           ),
  //           LogInterceptor(
  //             responseBody: true,
  //             requestBody: true,
  //           ),
  //         ],
  //       );
}
