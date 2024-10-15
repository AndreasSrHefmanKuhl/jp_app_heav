import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/widgets/tab_bar_container.dart';

class TopSideView extends StatelessWidget {
  const TopSideView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        TabBarContainer(text: 'Salty'),
        SizedBox(width: 10),
        TabBarContainer(text: 'sweety'),
        SizedBox(width: 10),
        TabBarContainer(text: 'spicy'),
        SizedBox(width: 10),
        TabBarContainer(text: 'Show them all')
      ]),
    );
  }
}
