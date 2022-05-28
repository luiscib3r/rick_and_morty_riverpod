import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/app/data/datasources/datasources.dart';

abstract class EpisodeRepository {
  static final episodesProvider =
      FutureProvider.family.autoDispose<List<Episode>, int>(
    (ref, page) async {
      final response = await ref.watch(apiProvider).episodes(page);

      ref.keepAlive();

      return response.results;
    },
  );

  static final episodeProvider =
      FutureProvider.autoDispose.family<Episode, int>(
    (ref, id) async {
      final response = await ref.watch(apiProvider).episode(id);

      ref.keepAlive();

      return response;
    },
  );
}
