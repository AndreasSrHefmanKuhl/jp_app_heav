import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/widgets/big_button.dart';
import 'package:jp_app_heav/features/home/widgets/tab_button.dart';

class SlideCardView extends StatelessWidget {
  const SlideCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Expanded(
        child: Row(
          children: [
            BigButton(),
            SizedBox(width: 8),
            TabButton(text: ' Salty'),
            SizedBox(width: 8),
            TabButton(
              text: 'Sweet',
            ),
            SizedBox(width: 8),
            TabButton(text: "Drinks"),
          ],
        ),
      ),
    );
  }
}
