import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const  IconTextWidget({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 10,
          child: Icon(
            icon,
            size: 15,
          ),
        ),
        const SizedBox(width: 6),
        Text(text),
      ],
    );
  }
}
