import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormUpdateProduct extends StatelessWidget {
  TextFormUpdateProduct({
    super.key,
    this.label,
    this.inputType,
    this.onChange,
  });

  Function(String)? onChange;

  Widget? label;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      keyboardType: inputType,
      decoration: InputDecoration(
        label: label,
        border:  const OutlineInputBorder(),
      ),
    );
  }
}
