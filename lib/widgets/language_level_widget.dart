import 'package:flutter/material.dart';

class LanguageLevelWidget extends StatelessWidget {
  final String language;
  final double level;

  const LanguageLevelWidget({
    Key? key,
    required this.language,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          language,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          width: 150,
          child: LinearProgressIndicator(
            color: Colors.blue,
            minHeight: 8,
            value: level,
          ),
        )
      ],
    );
  }
}
