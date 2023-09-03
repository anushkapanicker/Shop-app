import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color bgcolor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgcolor,
      ),
      margin: EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8.0),
            Text(
              '\$$price',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Image.asset(
                image,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
