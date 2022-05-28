import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';
import 'package:rick_and_morty_riverpod/locations/locations.dart';
import 'package:sizing/sizing.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.ss, 4.ss, 24.ss, 0),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              LocationDetailRoute.open(context, id: location.id);
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      location.name,
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
