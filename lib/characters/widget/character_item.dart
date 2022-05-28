import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/characters/characters.dart';
import 'package:sizing/sizing.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.ss, 4.ss, 24.ss, 0),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              CharacterDetailRoute.open(context, id: character.id);
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Hero(
                      tag: character.id,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: CachedNetworkImage(
                          imageUrl: character.image,
                          progressIndicatorBuilder: (
                            context,
                            url,
                            downloadProgress,
                          ) =>
                              LinearProgressIndicator(
                            value: downloadProgress.progress,
                            color: Colors.lightGreenAccent,
                          ),
                          errorWidget: (context, url, dynamic _) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.ss),
                  Expanded(
                    flex: 8,
                    child: Text(
                      character.name,
                      style: TextStyle(fontSize: 24.fss),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 12.ss),
        ],
      ),
    );
  }
}
