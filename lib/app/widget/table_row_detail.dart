import 'package:flutter/material.dart';

class TableRowDetail extends StatelessWidget {
  const TableRowDetail({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(16),
              color: Colors.blueGrey,
              child: Text(
                addNewLineCharacter(value),
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(16),
              color: Colors.blueGrey,
              child: Text(
                value,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String addNewLineCharacter(String result) {
    if (result.length <= 23 && result.allMatches(' ').length <= 2) {
      return title;
    } else {
      return '$title\n';
    }
  }
}
