import 'package:flutter/material.dart';
import 'icon_text_widget.dart';
import 'package:cv_sefa_akiska/assets/constants/base_info_constants.dart';

class BaseInfoAppBarWidget extends StatelessWidget {
  const BaseInfoAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      stretch: true,
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text(
          forename + ' ' + lastname,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        stretchModes: const [StretchMode.zoomBackground],
        background: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Flexible(
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                minRadius: 27,
                maxRadius: 92,
                child: CircleAvatar(
                  minRadius: 25,
                  maxRadius: 90,
                  backgroundImage: AssetImage('lib/assets/images/CV_Photo.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  IconTextWidget(
                    icon: Icons.phone,
                    text: phoneNumber,
                  ),
                  IconTextWidget(
                    icon: Icons.mail,
                    text: eMailAddress,
                  ),
                  IconTextWidget(
                    icon: Icons.cake,
                    text: birthdate,
                  ),
                  IconTextWidget(
                    icon: Icons.home,
                    text: address,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
