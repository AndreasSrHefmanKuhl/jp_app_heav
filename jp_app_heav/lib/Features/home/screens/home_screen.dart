import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/widgets/slide_card_view.dart';

import 'package:jp_app_heav/features/home/widgets/top_side_view.dart';
import 'package:jp_app_heav/features/home/widgets/yummy_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/hintergründe/bg_mainscreen.png'),
                  fit: BoxFit.cover),
            ),
          ),
          const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text('choose your favorite snack!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start),
                SizedBox(height: 10),
                TopSideView(),
                Positioned(
                  bottom: -300,
                  right: 150,
                  child: YummyCard(
                      assets: 'assets/images/grafiken/Burger_3D.png',
                      title: '',
                      description: 'fresh Vegan meats/n that taste like heaven',
                      price: '13.99'),
                ),
                SlideCardView(),
              ]),
        ]),
      ),
    );
  }
}
