import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:map_flutter/models/address_by_ip.dart';
import 'package:map_flutter/models/app_error.dart';
import 'package:map_flutter/models/request_response_model.dart';

part 'parts/interceptors.dart';

class ApiIpAddress {
  late final _dio = Dio(_options)..interceptors.add(BaseInterceptor());

  final _options = BaseOptions(
    connectTimeout: 30000,
    receiveTimeout: 30000,
    sendTimeout: 30000,
  );

  Future<RequestResponse<AddressByIp>> get({
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.get(
        'https://ipinfo.io/json?',
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          sendTimeout: _options.sendTimeout,
          receiveTimeout: _options.receiveTimeout,
        ),
      );

      return RequestResponse(
        data: AddressByIp().fromJson(response.data),
      );
    } on DioError catch (error) {
      return RequestResponse(
        error: AppError(
          message: error.response?.statusMessage ?? '',
          code: error.response?.statusCode,
        ),
      );
    }
  }
}
