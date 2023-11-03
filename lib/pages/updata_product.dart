
import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/button_update_product.dart';
import 'package:store_app/widgets/textform_updateproduct.dart';

// ignore: must_be_immutable
class UpdateProduct extends StatelessWidget {
  UpdateProduct({super.key});

  String? name, dec, price, image;

  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                TextFormUpdateProduct(
                  onChange: (data) {
                    name = data;
                  },
                  label: const Text('Product Name'),
                  inputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormUpdateProduct(
                  onChange: (data) {
                    dec = data;
                  },
                  label: const Text('description'),
                  inputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormUpdateProduct(
                  onChange: (data) {
                    price = data;
                  },
                  label: const Text('Price'),
                  inputType: TextInputType.number,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormUpdateProduct(
                  onChange: (data) {
                    image = data;
                  },
                  label: const Text('Image'),
                  inputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtonUpdateProduct(
                  text: 'Update',
                  onTab: () {
                    UpdateProductSer().updateProduct(
                        title: name!,
                        price: price!,
                        description: dec!,
                        image: image!,
                        category: product.category);
                  },
                ),
              ],
            )),
      ),
    );
  }
}
