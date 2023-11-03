import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonUpdateProduct extends StatelessWidget {
  ButtonUpdateProduct({super.key, required this.text, required this.onTab});

  String text;

  void Function() onTab;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 50,
        minWidth: double.infinity,
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: onTab,
        child: Text(text));
  }
}
