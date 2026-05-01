import 'package:bazar_app/core/services/cache_helper.dart';
import 'package:dio/dio.dart';
import 'api_endpoints.dart';

class ApiInterceptor extends Interceptor {
  final Dio dio;

  ApiInterceptor(this.dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await CacheHelper.getSecureData(key: "accessToken");

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      final success = await _refreshToken();

      if (success) {
        try {
          final newToken = await CacheHelper.getSecureData(key: "accessToken");

          final request = err.requestOptions;

          request.headers['Authorization'] = 'Bearer $newToken';

          final response = await dio.fetch(request);

          return handler.resolve(response);
        } catch (e) {
          return handler.next(err);
        }
      }
    }

    handler.next(err);
  }

  Future<bool> _refreshToken() async {
    try {
      final refreshToken = await CacheHelper.getSecureData(key: "refreshToken");

      if (refreshToken == null) return false;

      final refreshDio = Dio();

      final response = await refreshDio.post(
        ApiEndpoints.refreshToken,
        data: {"refreshToken": refreshToken},
      );

      final newAccessToken = response.data['access_token'];

      final newRefreshToken = response.data['refresh_token'];

      await CacheHelper.setSecureData(
        key: "accessToken",
        value: newAccessToken,
      );

      await CacheHelper.setSecureData(
        key: "refreshToken",
        value: newRefreshToken,
      );

      return true;
    } catch (e) {
      return false;
    }
  }
}
