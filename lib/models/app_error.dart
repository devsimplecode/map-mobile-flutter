

import 'package:flutter/foundation.dart';

@immutable
class AppError {
  const AppError({
    required this.message,
    this.code,
  });

  final int? code;
  final String message;

  @override
  String toString() => 'Error(errorMessage: $message, code: $code)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppError && other.code == code && other.message == message;
  }

  @override
  int get hashCode => code.hashCode ^ message.hashCode;
}
