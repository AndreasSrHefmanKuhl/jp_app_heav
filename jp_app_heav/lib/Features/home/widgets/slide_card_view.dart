import 'package:flutter/material.dart';
import 'package:jp_app_heav/features/home/repository/yummy_card_data.dart';
import 'package:jp_app_heav/features/home/widgets/slide_card.dart';

class SlideCardView extends StatelessWidget {
  const SlideCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        SlideCard(
          asset: product.assets,
          title: product.title,
          description: product.description,
          price: product.price,
        );
      },
    );
  }
}
