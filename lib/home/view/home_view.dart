import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/characters/characters.dart';
import 'package:rick_and_morty_riverpod/episodes/router/router.dart';
import 'package:rick_and_morty_riverpod/gen/assets.gen.dart';
import 'package:rick_and_morty_riverpod/home/home.dart';
import 'package:rick_and_morty_riverpod/locations/locations.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('RMDB'),
      ),
      body: Center(
        child: width > height
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: items(context),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: items(context),
              ),
      ),
    );
  }

  List<Widget> items(BuildContext context) => [
        HomeItem(
          title: 'Characters',
          image: AssetImage(Assets.images.characters.path),
          onTap: () {
            CharactersRoute.open(context);
          },
        ),
        HomeItem(
          title: 'Locations',
          image: AssetImage(Assets.images.locations.path),
          onTap: () {
            LocationsRoute.open(context);
          },
        ),
        HomeItem(
          title: 'Episodes',
          image: AssetImage(Assets.images.episodes.path),
          onTap: () {
            EpisodesRoute.open(context);
          },
        ),
      ];
}
