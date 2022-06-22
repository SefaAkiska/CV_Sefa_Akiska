import 'package:flutter/material.dart';

class ScrollableSectionWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const ScrollableSectionWidget(
      {Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 1.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.all(4.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: children,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
