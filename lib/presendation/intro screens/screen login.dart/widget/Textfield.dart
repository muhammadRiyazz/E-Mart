import 'package:flutter/material.dart';

import '../../../../core/constands/colors.dart';

class TextFieldsLogin extends StatelessWidget {
  const TextFieldsLogin(
      {super.key,
      required this.controller,
      required this.title,
      required this.icon});
  final TextEditingController controller;
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        filled: true,
        fillColor: cmainwhite,
        prefixIcon: icon,
        // contentPadding: EdgeInsets.zero,
        //  hintText: 'Search Products',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: cwhite),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
