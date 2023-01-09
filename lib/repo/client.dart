
import 'package:map_flutter/models/request_response_model.dart';

abstract class DioClient {
  Future<RequestResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });
}
