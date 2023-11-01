
import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products.dart';
import 'package:store_app/widgets/castom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(
            top: 50.0,
            left: 8,
            right: 8,
          ),
          child: FutureBuilder<List<ProductModel>>(

              future: GetAllProducts().getAllProduct(),

              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel> pro = snapshot.data!;
                  return GridView.builder(
                    itemCount: pro.length,
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 50,
                      ),
                      itemBuilder: (context, index) {
                        return CastomCard(
                          product: pro[index],
                        );
                      });
                } else {
                return  Center(
                    child: const CircularProgressIndicator(),
                  );
                }
              })),
    );
  }
}
