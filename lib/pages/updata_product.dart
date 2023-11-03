import 'package:flutter/material.dart';
import 'package:store_app/widgets/button_update_product.dart';
import 'package:store_app/widgets/textform_updateproduct.dart';

// ignore: must_be_immutable
class UpdateProduct extends StatelessWidget {
   UpdateProduct({super.key});

  String? name, dec, price, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [ SizedBox(
                height: 120,
              ),
                TextFormUpdateProduct(
                  onChange: (data) {
                    name = data;
                  },
                  label: Text('Product Name'),
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormUpdateProduct(
                  onChange: (data) {
                    dec = data;
                  },
                  label: Text('description'),
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormUpdateProduct(
                  onChange: (data) {
                    price = data;
                  },
                  label: Text('Price'),
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormUpdateProduct(
                  onChange: (data) {
                    image = data;
                  },
                  label: Text('Image'),
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 50,
                ),
              ButtonUpdateProduct(),
              ],
            )),
      ),
    );
  }
}
