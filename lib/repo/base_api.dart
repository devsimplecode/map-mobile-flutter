import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:map_flutter/constants/environment.dart';
import 'package:map_flutter/models/address_by_ip.dart';
import 'package:map_flutter/models/app_error.dart';
import 'package:map_flutter/models/place.dart';
import 'package:map_flutter/models/place_search.dart';
import 'package:map_flutter/models/request_response.dart';

part 'parts/interceptors.dart';

class BaseApi {
  late final _dio = Dio(_options)..interceptors.add(BaseInterceptor());

  final _options = BaseOptions(
    connectTimeout: 30000,
    receiveTimeout: 30000,
    sendTimeout: 30000,
  );

  Future<RequestResponse<AddressByIp>> getIpAddress({
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
        data: AddressByIp.fromJson(response.data),
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

  Future<RequestResponse<List<PlaceSearch>>> getAddressesGoogle(
    String search,
    String latLng, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.get(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&location=$latLng&radius=5000&sessiontoken=122344&libraries=places&types=address&key=${Environment.googleApiKey}',
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          sendTimeout: _options.sendTimeout,
          receiveTimeout: _options.receiveTimeout,
        ),
      );
      var jsonResults = response.data['predictions'] as List;
      return RequestResponse(
        data: jsonResults.map((place) => PlaceSearch.fromJson(place)).toList(),
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

  Future<RequestResponse<Place>> getPlaceGoogle(
    String placeId, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.get(
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${Environment.googleApiKey}',
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          sendTimeout: _options.sendTimeout,
          receiveTimeout: _options.receiveTimeout,
        ),
      );
      var jsonResult = response.data['result'] as Map<String, dynamic>;
      return RequestResponse(
        data: Place.fromJson(jsonResult),
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

  Future<RequestResponse<List<Place>>> getAddressesYandex(
    String search,
    String ll, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.get(
        'https://search-maps.yandex.ru/v1/?text=$search&ll=$ll&type=biz&lang=en_US&apikey={Environment.yandexApiKeyPlaces}',
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          sendTimeout: _options.sendTimeout,
          receiveTimeout: _options.receiveTimeout,
        ),
      );
      var jsonResults = response.data['features'] as List;
      return RequestResponse(
        data: jsonResults.map((place) => Place.fromJson(place)).toList(),
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
