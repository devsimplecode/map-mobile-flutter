import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:map_flutter/repo/map_api.dart';

final headers = {Headers.contentTypeHeader: 'application/json; charset=utf-8'};
final Dio dio = Dio()..interceptors.add(BaseInterceptor());

Future<Response> response(String files) async {
  return Response(
    data: await File(files).readAsString(),
    requestOptions: RequestOptions(
      path: Constants.empty,
      headers: headers,
    ),
    statusCode: 200,
  );
}

MapApi api(String file) => MapApi(
      testResponse: response(file),
      runTest: true,
    );
void main(){
  test('Fetching LatLng by user ip', () async {
    final resultApi = api('test/repo_test/address_by_ip.json');
    final result = await resultApi.getIpAddress();
    print(jsonEncode(result.data!));
    expect(
      result.data?.loc,
      "42.4531,59.6103",
    );
  });
}
