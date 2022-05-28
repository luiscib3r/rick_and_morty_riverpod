import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Error',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3?.copyWith(
              color: Colors.red,
            ),
      ),
    );
  }
}
