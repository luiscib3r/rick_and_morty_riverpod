import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/app/data/datasources/datasources.dart';

abstract class LocationRepository {
  static final locationsProvider =
      FutureProvider.family.autoDispose<List<Location>, int>(
    (ref, page) async {
      final response = await ref.watch(apiProvider).locations(page);

      ref.keepAlive();

      return response.results;
    },
  );

  static final locationProvider =
      FutureProvider.autoDispose.family<Location, int>(
    (ref, id) async {
      final response = await ref.watch(apiProvider).location(id);

      ref.keepAlive();

      return response;
    },
  );
}
