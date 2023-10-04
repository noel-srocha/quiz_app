import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/shared/icon_label_button.dart';

import '../widgets/shared/display_for.dart';
import '../widgets/shared/display_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const DisplayImage(
            imagePath: 'assets/images/quiz-logo.png',
          ),
          const DisplayFor(
            value: 'Learn Flutter the fun way!',
          ),
          IconLabelButton(
            icon: Icons.play_arrow,
            label: 'Start',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
