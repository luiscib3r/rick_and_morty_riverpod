import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_riverpod/locations/locations.dart';

class LocationsRoute extends GoRoute {
  LocationsRoute({
    super.path = _path,
    super.builder = _builder,
  }) : super(routes: _routes);

  static const String _path = 'locations';

  static String route() => '/locations';

  static final _routes = [
    LocationDetailRoute(),
  ];

  static Widget _builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const LocationsView();

  static void open(BuildContext context) => context.go(route());
}

class LocationDetailRoute extends GoRoute {
  LocationDetailRoute({
    super.path = _path,
    super.builder = _builder,
  });

  static const String _path = ':id';

  static String route(int id) => '/locations/$id';

  static Widget _builder(
    BuildContext ctx,
    GoRouterState state,
  ) =>
      LocationDetailView(
        id: state.params['id'],
      );

  static void open(BuildContext context, {required int id}) =>
      context.go(route(id));
}
