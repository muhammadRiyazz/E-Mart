import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShippingType extends StatelessWidget {
  const ShippingType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: cwhite, borderRadius: BorderRadius.circular(15)),
        child: const ListTile(
            //   contentPadding: EdgeInsets.zero,
            trailing: Icon(
              Icons.navigate_next_rounded,
              color: cblack,
              size: 34,
            ),
            title: Text(
              'Economy',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // subtitle: Text('Malappuram,Kerala'),
            leading: Icon(
              Icons.local_shipping,
              color: cblack,
              size: 30,
            )),
      ),
    );
  }
}
