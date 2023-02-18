import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/screen%20choose%20shipping/screen_choose_shiping.dart';
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
        child: ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ChooseShipping();
                },
              ));
            },
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
            leading: CircleAvatar(
              backgroundColor: cmainwhite,
              child: Icon(
                Icons.directions_walk_outlined,
                color: cblack,
                size: 30,
              ),
            )),
      ),
    );
  }
}
