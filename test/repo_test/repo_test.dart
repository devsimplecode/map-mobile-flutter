import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:map_flutter/repo/base_api.dart';

void main() {
  test('Fetching LatLng by user ip', () async {
    final repo = _mapApi('test/repo_test/address_by_ip.json');
    final result = await repo.getIpAddress();
    expect(
      result.data?.loc,
      "42.4531,59.6103",
    );
  });

  test('Error fetching data by user ip', () async {
    final repo = _mapApi('test/repo_test/response_error.json');
    final result = await repo.getIpAddress();
    expect(result.error?.message, null);
  });
}

final headers = {Headers.contentTypeHeader: 'application/json; charset=utf-8'};

Future<Response> _response(String files) async {
  return Response(
    data: await File(files).readAsString(),
    requestOptions: RequestOptions(
      path: Constants.empty,
      headers: headers,
    ),
    statusCode: 200,
  );
}

BaseApi _mapApi(String file) => BaseApi(
      testResponse: _response(file),
      runTest: true,
    );
