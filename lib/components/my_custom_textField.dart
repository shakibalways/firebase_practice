import 'package:flutter/material.dart';

class MyCustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String lText;
  const MyCustomTextfield({
    super.key,
    required this.lText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText:lText,
        border: const OutlineInputBorder()
      ),
    );
  }
}
