import 'package:flutter/material.dart';

class ButtonUpdateProduct extends StatelessWidget {
  const ButtonUpdateProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 50,
        minWidth: double.infinity,
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () {},
        child: Text('Update'));
  }
}
