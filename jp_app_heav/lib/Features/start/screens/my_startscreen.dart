import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/screens/home_screen.dart';
import 'package:jp_app_heav/features/start/widget/snackish_box.dart';

class MyStartscreen extends StatelessWidget {
  const MyStartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/hintergründe/bg_startscreen.png",
                fit: BoxFit.cover),
            Positioned(
                top: 242,
                left: 115,
                child: Transform.scale(
                    scale: 2.0,
                    child: Image.asset(
                        "assets/images/grafiken/chick cupcakes_3D.png"))),
            Positioned(
                left: 0,
                right: 0,
                bottom: 60,
                child: Image.asset("assets/images/details/T2.png",
                    fit: BoxFit.fitWidth)), // Bottom detail image
            Positioned(
              bottom: 90,
              left: 30,
              right: 30,
              child: SnackishBox(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
