import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_and_morty_riverpod/app/app.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';

class CharacterDetailView extends HookConsumerWidget {
  CharacterDetailView({
    super.key,
    required String? id,
  }) : id = id != null ? int.tryParse(id) : null;

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (id == null) {
      return const NotFoundView();
    }

    final asyncCharacter = ref.watch(
      CharacterRepository.characterProvider(id!),
    );

    final pageTitle = useState('Loading...');

    asyncCharacter.whenData((character) {
      pageTitle.value = character.name;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle.value),
      ),
      body: Center(
        child: asyncCharacter.when(
          data: (character) {
            return SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Hero(
                        tag: character.id,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: CachedNetworkImage(
                            imageUrl: character.image,
                            width: 160,
                            height: 160,
                            progressIndicatorBuilder: (
                              context,
                              url,
                              downloadProgress,
                            ) =>
                                LinearProgressIndicator(
                              value: downloadProgress.progress,
                              color: Colors.lightGreenAccent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: Text(
                        character.name,
                        style: const TextStyle(fontSize: 32),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TableRowDetail(
                      title: 'Status',
                      value: character.status,
                    ),
                    TableRowDetail(
                      title: 'Species',
                      value: character.species,
                    ),
                    TableRowDetail(
                      title: 'Gender',
                      value: character.gender,
                    ),
                    TableRowDetail(
                      title: 'Origin',
                      value: character.origin.name,
                    ),
                    TableRowDetail(
                      title: 'Last Location',
                      value: character.location.name,
                    )
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
