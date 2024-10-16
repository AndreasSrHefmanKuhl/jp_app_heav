import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  const BigButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.25),
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white, width: 0.3),
              borderRadius: BorderRadius.circular(40))),
      child: const Row(children: [
        Icon(Icons.fastfood_outlined, color: Colors.white),
        Text(
          " All categories",
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.white,
        )
      ]),
    );
  }
}
