import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Expanded(
              child: Container(
            color: cgrey,
            height: 1,
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text,
                style: const TextStyle(
                  fontSize: 16,
                  color: cgrey,
                )),
          ),
          Expanded(
              child: Container(
            color: cgrey,
            height: 1,
          )),
        ],
      ),
    );
  }
}
