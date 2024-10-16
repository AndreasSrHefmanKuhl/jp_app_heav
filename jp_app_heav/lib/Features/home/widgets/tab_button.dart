import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String text;
  const TabButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.35),
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white, width: 0.3),
              borderRadius: BorderRadius.circular(40))),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
