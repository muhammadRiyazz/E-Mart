import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../screen  shipping Address/screen_shiping_Address.dart';

class CheckoutLocaton extends StatelessWidget {
  const CheckoutLocaton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      opacity: 0.07,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        child: Container(
          decoration: BoxDecoration(
              color: cwhite, borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ChooseShippingAddress();
                },
              ));
            },
            contentPadding: EdgeInsets.zero,
            trailing: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.navigate_next_outlined,
                color: cblack,
                size: 30,
              ),
            ),
            title: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Malappuram,Kerala'),
            leading: Padding(
              padding: EdgeInsets.only(left: 4),
              child: CircleAvatar(
                radius: 30,
                //  maxRadius: 70,
                backgroundColor: cmainwhite,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundColor: cblack,
                    child: Icon(
                      Icons.location_on,
                      size: 32,
                      color: cwhite,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
