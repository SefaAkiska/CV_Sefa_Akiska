import 'package:flutter/material.dart';
import 'scrollable_section_widget.dart';
import '../cards/tappable_card_widget.dart';
import '../cards/untappable_card_widget.dart';

class WorkExperienceSectionWidget extends StatelessWidget {
  const WorkExperienceSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScrollableSectionWidget(
      title: 'Berufserfahrung',
      children: [
        UntappableCardWidget(
          headline: 'Promoter',
          description: 'Pepperminds Deutschland GmbH\n2017',
        ),
        TappableCardWidget(
          headline: 'IT Solution Engineer',
          description: 'syracom – business efficiency engineering\n2019 - 2020',
          images: [
            'lib/assets/images/syracom_Arbeitszeugnis_1.jpg',
            'lib/assets/images/syracom_Arbeitszeugnis_2.jpg',
          ],
          title: 'syracom - Arbeitszeugnis',
        ),
        UntappableCardWidget(
          headline: 'Softwareentwickler',
          description: 'firesys GmbH\n2020 - heute\n(.Net Framework, VBA, C#)',
        ),
      ],
    );
  }
}
