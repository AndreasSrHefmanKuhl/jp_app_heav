import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/start/widget/snackish_box.dart';

class MyStartscreen extends StatefulWidget {
  const MyStartscreen({super.key});

  @override
  State<MyStartscreen> createState() => _MyStartscreenState();
}

class _MyStartscreenState extends State<MyStartscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/hintergründe/bg_startscreen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 175.0,
            right: -140,
            child: Image.asset(
              'assets/images/grafiken/chick cupcakes_3D.png',
              scale: 0.442,
            ),
          ),
          Positioned(
            bottom: 65,
            right: 0,
            child: Image.asset(
              'assets/images/details/T2.png',
              scale: 1,
              colorBlendMode: BlendMode.difference,
            ),
          ),
          // ignore: prefer_const_constructors
          Positioned(
            bottom: 50,
            right: 30,
            left: 30,
            child: const SnackishBox(),
          ),
        ]),
      ),
    );
  }
}
