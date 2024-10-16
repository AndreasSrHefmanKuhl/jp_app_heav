import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/repository/yummy_card_data.dart';

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
