import 'package:flutter/material.dart';
import '../language_level_widget.dart';

class LanguagesSectionWidget extends StatelessWidget {
  const LanguagesSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 1.0),
              child: Text(
                'Sprachen',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  LanguageLevelWidget(language: 'Deutsch', level: 1.0),
                  SizedBox(
                    height: 10,
                  ),
                  LanguageLevelWidget(language: 'Englisch', level: 0.8),
                  SizedBox(
                    height: 10,
                  ),
                  LanguageLevelWidget(language: 'Türkisch', level: 0.6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
