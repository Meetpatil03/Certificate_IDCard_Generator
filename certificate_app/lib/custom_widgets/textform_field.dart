import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final int secure;
  const TextForm({super.key, required this.hintText, required this.controller,required this.secure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: secure == 1 ? true : false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 18),
      ),
    );
  }
}
