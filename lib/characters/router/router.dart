import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_riverpod/characters/characters.dart';

class CharactersRoute extends GoRoute {
  CharactersRoute({
    super.path = _route,
    super.builder = _builder,
  }) : super(routes: _routes);

  static const String _route = 'characters';

  static String route() => '/characters';

  static Widget _builder(
    BuildContext ctx,
    GoRouterState state,
  ) =>
      const CharactersView();

  static final _routes = [
    CharacterDetailRoute(),
  ];

  static void open(BuildContext context) => context.go(route());
}

class CharacterDetailRoute extends GoRoute {
  CharacterDetailRoute({
    super.path = _path,
    super.builder = _builder,
  });

  static const String _path = ':id';

  static String route(int id) => '/characters/$id';

  static Widget _builder(
    BuildContext ctx,
    GoRouterState state,
  ) =>
      CharacterDetailView(
        id: state.params['id'],
      );

  static void open(BuildContext context, {required int id}) =>
      context.go(route(id));
}
