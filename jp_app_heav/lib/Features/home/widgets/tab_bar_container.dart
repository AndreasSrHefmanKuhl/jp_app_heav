import 'package:flutter/material.dart';

class TabBarContainer extends StatelessWidget {
  final String text;

  const TabBarContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(
                width: 2, strokeAlign: BorderSide.strokeAlignCenter)),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ));
  }
}
