import 'package:flutter/material.dart';

class YummyCard extends StatelessWidget {
  final String assets;
  final String title;
  final String description;
  final String price;
  final String value;

  const YummyCard({
    super.key,
    required this.assets,
    required this.title,
    required this.description,
    required this.price,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
          image: AssetImage('assets/images/details/Top Card.png'),
          fit: BoxFit.cover,
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Positioned(
              right: 250,
              bottom: 50,
              child: Image(
                image: AssetImage(assets),
              )),
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
                  // Hier fügst du die Funktionalität zum Hinzufügen zum Warenkorb hinzu
                  print('Produkt zum Warenkorb hinzugefügt: $title');
                },
                child: Text('Add to Order'),
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}

List<YummyCard> products = const [
  YummyCard(
    assets: 'assets/images/grafiken/Burger_3D.png',
    title: 'Angis Yummy Burger',
    description: 'Delish vergan burger that testes like heaven',
    price: '₳ 13.99',
    value: '120',
  ),
  YummyCard(
    assets: 'assets/images/grafiken/cat_cupcake_3D.png',
    title: 'Moglis Cup',
    description: 'Strawberry ice cream',
    price: '₳ 8.99',
    value: '200',
  ),
  YummyCard(
    assets: 'assets/iamges/grafiken/ice.cream.png',
    title: 'Balu`s Cup',
    description: 'Pistachio ice cream',
    price: '₳ 8.99',
    value: '100',
  ),
];
