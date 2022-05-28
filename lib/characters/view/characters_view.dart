import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:rick_and_morty_riverpod/app/app.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/characters/characters.dart';

class CharactersView extends HookConsumerWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = useState(1);

    final characters = useState(<Character>[]);

    final asyncCharacters = ref.watch(
      CharacterRepository.charactersProvider(page.value),
    )..when(
        data: (data) => characters.value = [...characters.value, ...data],
        error: (error, stackTrace) => log(
          error.toString(),
          stackTrace: stackTrace,
        ),
        loading: () => null,
      );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters List'),
      ),
      body: (characters.value.isEmpty && asyncCharacters.isLoading)
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.lightGreenAccent,
              ),
            )
          : asyncCharacters.hasError
              ? const AppErrorWidget()
              : LazyLoadScrollView(
                  onEndOfPage: () => page.value++,
                  isLoading: asyncCharacters.isLoading,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: characters.value.length,
                    itemBuilder: (context, index) {
                      final _character = characters.value[index];

                      return CharacterItem(character: _character);
                    },
                  ),
                ),
    );
  }
}
