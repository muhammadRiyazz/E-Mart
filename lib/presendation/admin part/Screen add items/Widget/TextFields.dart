import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class ItemTextField extends StatelessWidget {
  const ItemTextField(
      {super.key, required this.controller, required this.title});
  final TextEditingController controller;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: title,
          filled: true,
          fillColor: cmainwhite,
        ),
      ),
    );
  }
}
