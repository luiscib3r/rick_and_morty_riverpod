import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/app/router/router.dart';
import 'package:sizing/sizing_builder.dart';

export 'not_found.dart';
export 'widget/widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Rick and Morty',
      theme: ThemeData(
        fontFamily: 'Rick and Morty',
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
      builder: (context, child) {
        return SizingBuilder(
          builder: (context) {
            if (child != null) {
              return child;
            }

            return Container();
          },
        );
      },
    );
  }
}
