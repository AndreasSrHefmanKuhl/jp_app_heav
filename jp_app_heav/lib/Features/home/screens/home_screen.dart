import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/widgets/drawer_view.dart';
import 'package:jp_app_heav/features/home/widgets/size.dart';
import 'package:jp_app_heav/features/home/models/slide_card.dart';
import 'package:jp_app_heav/features/home/widgets/slide_card_view.dart';

import 'package:jp_app_heav/features/home/models/yummy_card.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        drawer: const DrawerView(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/hintergründe/bg_mainscreen.png",
                fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 80, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hamburger Icon to open the drawer
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Choose Your Favorite \nSnack",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  const SlideCardView(),
                  const SizedBox(height: 32),
                  const Yummycard(),
                  const SizedBox(height: 40),
                  const Text('We Recommend',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 16), // Abstand zum linken Rand
                          _bottomFoodItem(
                            title: 'Mogli`s Cup',
                            flavor: 'Strawberry ice cream',
                            imagePath:
                                'assets/images/grafiken/cat cupcakes_3D.png',
                            price: '8.99',
                          ),
                          const SizedBox(width: 16),
                          _bottomFoodItem(
                            title: 'Balu`s Cup',
                            flavor: 'Pistachio ice cream',
                            imagePath: 'assets/images/grafiken/ice.cream.png',
                            price: '8.99',
                          ),
                          const SizedBox(width: 16),
                          _bottomFoodItem(
                            title: 'Ice Cream Stick',
                            flavor: 'Vanilla ice cream',
                            imagePath:
                                'assets/images/grafiken/ice cream stick_3D.png',
                            price: '8.99',
                          ),
                          const SizedBox(width: 16),
                          _bottomFoodItem(
                            title: 'Ice Cup',
                            flavor: 'Chocolate ice cream',
                            imagePath: 'assets/images/grafiken/Icecream_3D.png',
                            price: '8.99',
                          ),
                          const SizedBox(width: 16), // Abstand zum rechten Rand
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 64,
              bottom: 280,
              child: Transform.scale(
                  scale: 0.6,
                  child: Image.asset('assets/images/grafiken/Burger_3D.png')),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomFoodItem({
    required String title,
    required String flavor,
    required String imagePath,
    required String price,
  }) =>
      GestureDetector(
        onTap: () {
          showModalBottomSheet(
            scrollControlDisabledMaxHeightRatio: 0.885,
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
            ),
            builder: (context) =>
                _buildBottomSheetContent(title, flavor, price),
          );
        },
        child: const SlideCard(),
      );

  Widget _buildBottomSheetContent(String title, String flavor, String price) {
    return Container(
      height: 805,
      width: 500,
      color: const Color.fromARGB(194, 0, 0, 0),
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Positioned(
            top: 160, // - 160
            right: 40,
            child: Transform.translate(
              offset: const Offset(100, -310),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Transform.scale(
                  scale: 0.9,
                  child: const Image(
                    image: AssetImage(
                      'assets/images/grafiken/cat_cupcakes_3D.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 55,
            child: Transform.scale(
              scale: 1.3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60, width: 1.0),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                height: 300,
                width: 300,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          flavor,
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const SizedBox(height: 8),

                        const Text(
                          'mmmmmmhmhhhhhhhh what a taste!.',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                        const SizedBox(height: 16),
                        // Preis
                        Text(
                          "₳ $price",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Divider(
                          indent: 30,
                          endIndent: 30,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Ingredients',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Text(
                              'Reviews',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 20,
                              width: 110,
                              child: Image.asset(
                                'assets/details/incredents.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(bottom: 120, left: 30, right: 30, child: Size()),
          Positioned(
            bottom: 40,
            left: 30,
            right: 30,
            child: Container(
              width: 350,
              height: 44.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(colors: [Colors.pink, Colors.orange]),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  'Add to order for ₳ $price',
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
