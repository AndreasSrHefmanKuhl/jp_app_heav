import 'package:flutter/material.dart';

class SlideCard extends StatelessWidget {
  final String asset;
  final String title;
  final String description;
  final String price;

  const SlideCard({
    super.key,
    required this.asset,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(asset),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(description),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('€$price'),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context)
                    print('Produkt zum Warenkorb hinzugefügt: $title');
                  },
                  child: const Text('Add to Order'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
