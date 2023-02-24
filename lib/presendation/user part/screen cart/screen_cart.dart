import 'dart:ffi';

import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/user%20part/screen%20cart/widgets/Button_Part.dart';
import 'package:emart/presendation/user%20part/screen%20cart/widgets/cart_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  ' My Cart',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                CartProduct(),
              ],
            ),
          ),
        ),
        LastButtonPart()
      ],
    );
  }
}
