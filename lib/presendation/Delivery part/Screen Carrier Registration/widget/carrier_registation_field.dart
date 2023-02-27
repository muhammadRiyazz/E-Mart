import 'package:flutter/material.dart';

import '../../../../core/constands/colors.dart';

class TextFieldsCarrierRegistration extends StatelessWidget {
  const TextFieldsCarrierRegistration(
      {super.key,
      required this.controller,
      required this.title,
      required this.icon});
  final TextEditingController controller;
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: title,
          filled: true,
          fillColor: cmainwhite,
          prefixIcon: icon,
          // contentPadding: EdgeInsets.zero,
          //  hintText: 'Search Products',
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: cwhite),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
