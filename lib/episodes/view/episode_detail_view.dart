import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_and_morty_riverpod/app/app.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';

class EpisodeDetailView extends HookConsumerWidget {
  EpisodeDetailView({
    super.key,
    required String? id,
  }) : id = id != null ? int.tryParse(id) : null;

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (id == null) {
      return const NotFoundView();
    }

    final asyncEpisode = ref.watch(
      EpisodeRepository.episodeProvider(id!),
    );

    final pageTitle = useState('Loading...');

    asyncEpisode.whenData((episode) {
      pageTitle.value = episode.name;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle.value),
      ),
      body: Center(
        child: asyncEpisode.when(
          data: (episode) {
            return SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Center(
                      child: Text(
                        episode.name,
                        style: const TextStyle(fontSize: 32),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TableRowDetail(
                      title: 'Episode',
                      value: episode.episode,
                    ),
                    TableRowDetail(
                      title: 'Air Date',
                      value: episode.airDate,
                    ),
                  ],
                ),
              ),
            );
          },
          error: (error, stack) => const AppErrorWidget(),
          loading: () => const CircularProgressIndicator(
            color: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }
}
