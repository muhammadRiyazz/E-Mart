import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class Titlepart extends StatelessWidget {
  const Titlepart({super.key, required this.title, required this.ontap});
  final String title;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 17),
      child: Row(
        children: [
          GestureDetector(
            onTap: ontap,
            child: Container(
              decoration: BoxDecoration(
                // color: cmain,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 35,
              width: 35,
              child: const Icon(
                Icons.arrow_back_ios_new_sharp,
                color: cblack,
                size: 18,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
