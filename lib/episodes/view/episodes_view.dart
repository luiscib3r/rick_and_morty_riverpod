import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:rick_and_morty_riverpod/app/app.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/episodes/episodes.dart';

class EpisodesView extends HookConsumerWidget {
  const EpisodesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = useState(1);

    final episodes = useState(<Episode>[]);

    final asyncEpisodes = ref.watch(
      EpisodeRepository.episodesProvider(page.value),
    )..when(
        data: (data) => episodes.value = [...episodes.value, ...data],
        error: (error, stackTrace) => log(
          error.toString(),
          stackTrace: stackTrace,
        ),
        loading: () => null,
      );

    return Scaffold(
      appBar: AppBar(
        title: const Text('episodes List'),
      ),
      body: (episodes.value.isEmpty && asyncEpisodes.isLoading)
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.lightGreenAccent,
              ),
            )
          : asyncEpisodes.hasError
              ? const AppErrorWidget()
              : LazyLoadScrollView(
                  onEndOfPage: () => page.value++,
                  isLoading: asyncEpisodes.isLoading,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: episodes.value.length,
                    itemBuilder: (context, index) {
                      final _episode = episodes.value[index];

                      return EpisodeItem(episode: _episode);
                    },
                  ),
                ),
    );
  }
}
