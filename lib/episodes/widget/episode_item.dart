import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/episodes/episodes.dart';
import 'package:sizing/sizing.dart';

class EpisodeItem extends StatelessWidget {
  const EpisodeItem({
    super.key,
    required this.episode,
  });

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.ss, 4.ss, 24.ss, 0),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              EpisodeDetailRoute.open(context, id: episode.id);
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      episode.name,
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
