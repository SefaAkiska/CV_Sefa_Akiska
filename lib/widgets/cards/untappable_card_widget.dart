import 'package:cv_sefa_akiska/screens/scrollable_photos_screen.dart';
import 'package:flutter/material.dart';

class UntappableCardWidget extends StatelessWidget {
  final String headline;
  final String description;

  const UntappableCardWidget({
    Key? key,
    required this.headline,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              headline,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            Text(
              description,
              style: const TextStyle(fontSize: 14, height: 1.4),
              textAlign: TextAlign.center,
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 20,
              ),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          width: 1,
          color: Colors.blue,
        ),
      ),
    );
  }
}
