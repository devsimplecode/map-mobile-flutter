import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:map_flutter/repo/map_api.dart';
import 'package:mockito/mockito.dart';
final headers = {'Accept': 'application/json'};

class DioAdapterMock extends Mock implements HttpClientAdapter {}


void main() {
  late MapApi authRepository;

  setUp(() {
    authRepository = MapApi();
  });

  test('Successfully logged in user', () async {
    expect(
      await authRepository.getIpAddress(),
      true,
    );
  });
}