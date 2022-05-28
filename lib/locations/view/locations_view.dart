import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:rick_and_morty_riverpod/app/app.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/locations/locations.dart';

class LocationsView extends HookConsumerWidget {
  const LocationsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = useState(1);

    final locations = useState(<Location>[]);

    final asyncLocations = ref.watch(
      LocationRepository.locationsProvider(page.value),
    )..when(
        data: (data) => locations.value = [...locations.value, ...data],
        error: (error, stackTrace) => log(
          error.toString(),
          stackTrace: stackTrace,
        ),
        loading: () => null,
      );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations List'),
      ),
      body: (locations.value.isEmpty && asyncLocations.isLoading)
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.lightGreenAccent,
              ),
            )
          : asyncLocations.hasError
              ? const AppErrorWidget()
              : LazyLoadScrollView(
                  onEndOfPage: () => page.value++,
                  isLoading: asyncLocations.isLoading,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: locations.value.length,
                    itemBuilder: (context, index) {
                      final _location = locations.value[index];

                      return LocationItem(location: _location);
                    },
                  ),
                ),
    );
  }
}
