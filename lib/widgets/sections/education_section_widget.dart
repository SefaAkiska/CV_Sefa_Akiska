import 'package:flutter/material.dart';
import '../cards/tappable_card_widget.dart';
import 'scrollable_section_widget.dart';

class EducationSectionWidget extends StatelessWidget {
  const EducationSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScrollableSectionWidget(
      title: 'Ausbildung',
      children: [
        TappableCardWidget(
          headline: 'Abitur',
          description: 'Gymnasium am Mosbacher Berg\n2007 - 2015',
          images: ['lib/assets/images/Abitur.jpg'],
          title: 'Abitur',
        ),
        TappableCardWidget(
          headline: 'Bachelor in Angewandter Informatik',
          description: 'Hochschule RheinMain\n2015 - 2019',
          images: [
            'lib/assets/images/Bachelor_1.jpg',
            'lib/assets/images/Bachelor_2.jpg',
          ],
          title: 'Bachelor',
        ),
      ],
    );
  }
}
