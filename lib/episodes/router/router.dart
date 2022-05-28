import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_riverpod/episodes/episodes.dart';

class EpisodesRoute extends GoRoute {
  EpisodesRoute({
    super.path = _path,
    super.builder = _builder,
  }) : super(routes: _routes);

  static const String _path = 'episodes';

  static String route() => '/episodes';

  static final _routes = [
    EpisodeDetailRoute(),
  ];

  static Widget _builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const EpisodesView();

  static void open(BuildContext context) => context.go(route());
}

class EpisodeDetailRoute extends GoRoute {
  EpisodeDetailRoute({
    super.path = _path,
    super.builder = _builder,
  });

  static const String _path = ':id';

  static String route(int id) => '/episodes/$id';

  static Widget _builder(
    BuildContext ctx,
    GoRouterState state,
  ) =>
      EpisodeDetailView(
        id: state.params['id'],
      );

  static void open(BuildContext context, {required int id}) =>
      context.go(route(id));
}
