import 'package:flutter/material.dart';

class ScrollablePhotosScreen extends StatefulWidget {
  final List<String> images;
  final String title;

  const ScrollablePhotosScreen(
      {Key? key, required this.images, required this.title})
      : super(key: key);

  @override
  State<ScrollablePhotosScreen> createState() => _ScrollablePhotosScreenState();
}

class _ScrollablePhotosScreenState extends State<ScrollablePhotosScreen> {
  late ListView photos;

  @override
  void initState() {
    photos = ListView(
      padding: const EdgeInsets.all(16.0),
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: widget.images
          .map((item) => SizedBox(
                width: 400,
                height: 400,
                child: Image(
                  image: AssetImage(item),
                ),
              ))
          .toList(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Wrap(
          children: [
            Text(
              widget.title,
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: photos,
    );
  }
}
