import 'package:cv_sefa_akiska/screens/scrollable_photos_screen.dart';
import 'package:flutter/material.dart';

class TappableCardWidget extends StatelessWidget {
  final String headline;
  final String title;
  final String description;
  final List<String> images;

  const TappableCardWidget({
    Key? key,
    required this.headline,
    required this.description,
    required this.images,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScrollablePhotosScreen(
                images: images,
                title: title,
              ),
            ),
          );
        },
        child: Card(
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
                  child: Icon(
                    Icons.touch_app,
                    size: 20,
                  ),
                )
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
        ),
      ),
    );
  }
}
