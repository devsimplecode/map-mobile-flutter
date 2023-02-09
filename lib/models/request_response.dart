
import 'package:map_flutter/models/app_error.dart';

class RequestResponse<T> {
  final T? data;
  final int? statusCode;
  final AppError? error;

  RequestResponse({
    this.data,
    this.statusCode,
    this.error,
  });

  @override
  String toString() {
    return 'RequestResponse(data: $data, statusCode: $statusCode, error: $error)';
  }
}
