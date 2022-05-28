import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_riverpod/home/home.dart';

final appRouter = GoRouter(
  routes: [
    HomeRoute(),
  ],
  urlPathStrategy: UrlPathStrategy.path,
  debugLogDiagnostics: kDebugMode,
);
