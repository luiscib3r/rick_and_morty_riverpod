import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/app/data/datasources/datasources.dart';

abstract class CharacterRepository {
  static final charactersProvider =
      FutureProvider.family.autoDispose<List<Character>, int>(
    (ref, page) async {
      final response = await ref.watch(apiProvider).characters(page);

      ref.keepAlive();

      return response.results;
    },
  );

  static final characterProvider =
      FutureProvider.autoDispose.family<Character, int>(
    (ref, id) async {
      final response = await ref.watch(apiProvider).character(id);

      ref.keepAlive();

      return response;
    },
  );
}
