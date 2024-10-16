import 'dart:ui';

import 'package:flutter/material.dart';

class SnackishBox extends StatelessWidget {
  final VoidCallback? onPressed;

  const SnackishBox({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 15),
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white54, width: 1.2),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            height: 250,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Feeling Snackish Tday?",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white70),
                ),
                const SizedBox(height: 16),
                const Text(
                    'Explore Angi`s most popular snack selection\nand get instantly happy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                    )),
                Container(
                    width: 200,
                    height: 44.0,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            colors: [Colors.redAccent, Colors.orangeAccent])),
                    child: ElevatedButton(
                        onPressed: onPressed,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text('Order Now!',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            )))),
              ],
            )),
      ),
    );
  }
}
