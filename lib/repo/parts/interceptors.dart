part of '../api_ip_address.dart';


class BaseInterceptor implements Interceptor {


  final _logger = Logger(
    printer: PrettyPrinter(methodCount: 0, lineLength: 20),
  );
  @override
  void onError(DioError error, ErrorInterceptorHandler handler) {
    var output = error.message;
    if (error.response?.statusMessage != null) {
      output += ' - ${error.response?.statusMessage}';
    }
    output += '\n${error.response?.data.toString()}';
    if (error.requestOptions.method == 'get') {
      output += ' \n${error.response?.realUri}';
    } else {
      output += '\n${error.requestOptions.path}\nParameters:\n${error.requestOptions.data}';
    }
    _logger.wtf(output);
    handler.next(error);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.contentType = 'application/json; charset=utf-8';
    options.headers = {
      'Accept': 'application/json',
    };

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
