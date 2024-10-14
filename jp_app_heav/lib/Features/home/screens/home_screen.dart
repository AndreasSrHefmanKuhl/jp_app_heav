import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:jp_app_heav/features/home/widgets/tab_bar_container.dart';

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
          const Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(height: 70),
            Text(
              'choose your favorite snack!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(9.0),
              child: SingleChildScrollView(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TabBarContainer(text: 'Salty'),
                  TabBarContainer(text: 'sweety'),
                  TabBarContainer(text: 'spicy')
                ]),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card();
  }
}
