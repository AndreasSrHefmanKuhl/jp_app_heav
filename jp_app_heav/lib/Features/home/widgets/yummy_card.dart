import 'package:flutter/material.dart';

class YummyCard extends StatelessWidget {
  final String assets;
  final String title;
  final String description;
  final String price;

  const YummyCard({
    super.key,
    required this.assets,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage('assets/images/details/Top Card.png'),
          fit: BoxFit.cover,
        ),
        Positioned(
          child: Image(
            image: AssetImage(assets),
          ),
          right: 400,
          bottom: 150,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(description),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('€$price'),
            ElevatedButton(
              onPressed: () {
                //navigator to bottomsheet
                print('Produkt zum Warenkorb hinzugefügt: $title');
              },
              child: Text('Add to Order'),
            ),
          ],
        ),
      ],
    );
  }
}
