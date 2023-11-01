import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

// ignore: must_be_immutable
class CastomCard extends StatelessWidget {
  CastomCard({super.key, required this.product});

  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topRight,
      children: [
        Card(
          elevation: 6,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'data',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('dfvd'),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          child: Image.network(
            product.image,
              width: 150,
              height: 100,
              ),
        ),
      ],
    );
  }
}
