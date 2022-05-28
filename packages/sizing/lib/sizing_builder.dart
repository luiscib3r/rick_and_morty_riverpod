import 'package:flutter/material.dart';
import 'package:sizing/sizing.dart';

typedef SizingWidgetBuilder = Widget Function(BuildContext context);

class SizingBuilder extends StatelessWidget {
  const SizingBuilder({
    Key? key,
    required this.builder,
    this.systemFontScale = false,
    this.baseSize = const Size(360, 640),
  }) : super(key: key);

  final SizingWidgetBuilder builder;
  final bool systemFontScale;
  final Size baseSize;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(
      key: ValueKey(size),
      builder: (_, BoxConstraints constraints) {
        if (constraints.maxWidth != 0) {
          Sizing.init(
            constraints,
            systemFontScale: systemFontScale,
            baseSize: baseSize,
          );

          return builder.call(context);
        }

        return Container();
      },
    );
  }
}
