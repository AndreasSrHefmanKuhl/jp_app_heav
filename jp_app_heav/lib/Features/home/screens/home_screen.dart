import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/repository/yummy_card_data.dart';
import 'package:jp_app_heav/features/home/widgets/tab_bar_container.dart';
import 'package:jp_app_heav/features/home/widgets/yummy_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen> {
  final List<YummyCard> product = products;

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
                const SizedBox(height: 100),
                const Text('choose your favorite snack!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start),
                const SizedBox(height: 10),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabBarContainer(text: 'Salty'),
                        SizedBox(width: 10),
                        TabBarContainer(text: 'sweety'),
                        SizedBox(width: 10),
                        TabBarContainer(text: 'spicy'),
                        SizedBox(width: 10),
                        TabBarContainer(text: 'Show them all')
                      ]),
                ),
                Positioned(
                  bottom: -150,
                  right: 150,
                  child: YummyCard(
                      assets: 'assets/images/grafiken/Burger_3D.png',
                      title: '',
                      description: 'fresh Vegan meats/n that taste like heaven',
                      price: '13.99'),
                ),
              ]),
        ]),
      ),
    );
  }
}
