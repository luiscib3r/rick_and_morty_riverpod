import 'package:flutter/material.dart';
import 'package:sizing/sizing.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  final String title;
  final ImageProvider image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: SizedBox(
          width: 160.ss,
          height: 160.ss,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: image,
                width: 110.ss,
                height: 110.ss,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 42.fss),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
