import 'package:flutter/material.dart';

class AccountIcon extends StatelessWidget {
  const AccountIcon({super.key, required this.img, required this.ontap});
  final String img;
  final ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromARGB(31, 112, 108, 108))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(img),
        ),
      ),
    );
  }
}
