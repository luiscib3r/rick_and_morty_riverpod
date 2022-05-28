import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_and_morty_riverpod/app/app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
