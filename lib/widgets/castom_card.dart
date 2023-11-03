import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/pages/updata_product.dart';

// ignore: must_be_immutable
class CastomCard extends StatelessWidget {
  CastomCard({super.key, required this.product});

  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          MaterialPageRoute(
            builder: (context) {
              return UpdateProduct();
            },
          ) as String,
          arguments: product,
        );
      },
      child: Stack(
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
                    product.title,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$ ' '${product.price}',
                        style: const TextStyle(),
                      ),
                      const Icon(
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
            right: 10,
            child: Image.network(
              product.image,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
