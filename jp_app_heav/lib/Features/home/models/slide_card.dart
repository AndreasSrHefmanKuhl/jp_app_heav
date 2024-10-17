import 'package:flutter/material.dart';

class SlideProduct {
  final String asset;
  final String title;
  final String description;
  final String price;

  const SlideProduct({
    required this.asset,
    required this.title,
    required this.description,
    required this.price,
  });
}

List<SlideProduct> products = const [
  SlideProduct(
      asset: 'assets/images/grafiken/Burger_3D.png',
      title: 'Angis Yummy Burger',
      description: 'Delish vergan burger that testes like heaven',
      price: '₳ 13.99'),
  SlideProduct(
      asset: 'assets/images/grafiken/cat_cupcake_3D.png',
      title: 'Moglis Cup',
      description: 'Strawberry ice cream',
      price: '₳ 8.99'),
  SlideProduct(
      asset: 'assets/images/grafiken/ice.cream.png',
      title: 'Balu`s Cup',
      description: 'Pistachio ice cream',
      price: ' ₳ 8.99'),
];

class SlideCard extends StatelessWidget {
  const SlideCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final product = products.single;
    return Card(
      child: ListTile(
        leading: Image(image: AssetImage(product.asset)),
        title: Text(product.title),
        subtitle: Text(product.description),
        trailing: Text('€${(product.price)}'),
        onTap: () {},
      ),
    );
  }
}
