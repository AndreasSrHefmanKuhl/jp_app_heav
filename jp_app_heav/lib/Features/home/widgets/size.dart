import 'package:flutter/material.dart';

class Size extends StatefulWidget {
  const Size({super.key});

  @override
  SizeState createState() => SizeState();
}

class SizeState extends State<Size> {
  String selectedSize = 'Medium';
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Size selection buttons
          ToggleButtons(
            isSelected: [
              selectedSize == 'Small',
              selectedSize == 'Medium',
              selectedSize == 'Large',
            ],
            onPressed: (int index) {
              setState(() {
                selectedSize = ['Small', 'Medium', 'Large'][index];
              });
            },
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Small', style: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Medium', style: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Large', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),

          // Quantity buttons
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    if (quantity > 1) {
                      quantity--;
                    }
                  });
                },
              ),
              Text(
                '$quantity',
                style: const TextStyle(color: Colors.white),
              ),
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
