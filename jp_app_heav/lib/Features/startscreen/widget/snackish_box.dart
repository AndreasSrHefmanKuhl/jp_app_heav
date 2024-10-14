import 'package:flutter/material.dart';

class SnackishBox extends StatelessWidget {
  const SnackishBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white60,
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      height: 180,
      width: 250,
      child:
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Felling Snackish Today?',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
            )),
        Text(
          "Explore Angi's most popular snack selection/n and get instantly happy.",
          textAlign: TextAlign.center,
        ),
        ElevatedButton(onPressed: null, child: Text('Order Now!'))
      ]),
    );
  }
}
