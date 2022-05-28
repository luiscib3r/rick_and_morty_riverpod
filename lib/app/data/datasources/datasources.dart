import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rick_and_morty_riverpod/app/data/datasources/api_rest.dart';
import 'package:rick_and_morty_riverpod/app/environment/environment.dart';

final dioProvider = Provider((ref) {
  final dio = Dio();

  if (kDebugMode) {
    dio.interceptors.add(
      PrettyDioLogger(
        logPrint: (obj) => log(obj.toString()),
      ),
    );
  }

  return dio;
});

final apiProvider = Provider(
  (ref) => ApiRest(
    ref.watch(dioProvider),
    baseUrl: ref.watch(baseUrlProvider),
  ),
);
