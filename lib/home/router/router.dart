import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_riverpod/characters/characters.dart';
import 'package:rick_and_morty_riverpod/episodes/router/router.dart';
import 'package:rick_and_morty_riverpod/home/home.dart';
import 'package:rick_and_morty_riverpod/locations/locations.dart';

class HomeRoute extends GoRoute {
  HomeRoute({
    super.path = _path,
    super.builder = _builder,
  }) : super(routes: _routes);

  static const String _path = '/';

  static String route() => '/';

  static Widget _builder(
    BuildContext ctx,
    GoRouterState state,
  ) =>
      const HomeView();

  static final _routes = <GoRoute>[
    CharactersRoute(),
    LocationsRoute(),
    EpisodesRoute(),
  ];

  static void open(BuildContext context) => context.goNamed(route());
}
