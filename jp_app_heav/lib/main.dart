import 'package:flutter/material.dart';

void main() {
  runApp(const MyStartscreen());
}

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
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image:
                  AssetImage('assets/images/hintergründe/bg_startscreen.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/grafiken/chick cupcakes_3D.png'),
                Image.asset('assets/images/details/T2.png'),
              ],
            )),
      ),
    );
  }
}
