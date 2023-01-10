import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:map_flutter/constants/environment.dart';
import 'package:map_flutter/models/address_by_ip.dart';
import 'package:map_flutter/models/app_error.dart';
import 'package:map_flutter/models/place.dart';
import 'package:map_flutter/models/place_search.dart';
import 'package:map_flutter/models/request_response_model.dart';
import 'dart:convert' as convert;

part 'parts/interceptors.dart';

class MapApi {
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

  Future<RequestResponse<List<PlaceSearch>>> getAutoComplete(
    String search, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.get(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&types=address&key=${Environment.googleApiKey}',
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

  Future<RequestResponse<Place>> getPlace(
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

  Future<RequestResponse<List<Place>>> getPlaces(
    double lat,
    double lng,
    String placeType, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.get(
        'https://maps.googleapis.com/maps/api/place/textsearch/json?location=$lat,$lng&type=$placeType&rankby=distance&key=${Environment.googleApiKey}',
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          sendTimeout: _options.sendTimeout,
          receiveTimeout: _options.receiveTimeout,
        ),
      );
      var json = convert.jsonDecode(response.data);
      var jsonResults = json['results'] as List;
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
