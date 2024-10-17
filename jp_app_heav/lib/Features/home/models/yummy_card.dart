import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/screens/home_screen.dart';

class Yummycard extends StatelessWidget {
  const Yummycard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 0.2),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const Text(
                    'Angi´s Yummy Burger',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const Expanded(child: SizedBox()),
                  Icon(Icons.star, color: Colors.pink[300], size: 16),
                  Text("4,8", style: TextStyle(color: Colors.grey[350]))
                ]),
                const SizedBox(height: 8),
                const Text(
                  'Delish vegan burger \nthat tastes like heaven',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 24),
                const Text("₳ 13.99",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 64),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 0.5,
                              blurRadius: 3,
                              offset: Offset(0, -1)),
                        ],
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(218, 161, 99, 223),
                              Color.fromARGB(250, 200, 120, 250)
                            ],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text("Add to order",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
