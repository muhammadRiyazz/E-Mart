import 'dart:ffi';

import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/screen%20checkout/widgets/Shipping_type.dart';
import 'package:emart/presendation/screen%20checkout/widgets/Location_part.dart';
import 'package:emart/presendation/screen%20checkout/widgets/order_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenCheckout extends StatelessWidget {
  ScreenCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 17),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
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
                    const Text(
                      '  Checkout',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  ' Shipping Address',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              const CheckoutLocaton(),
              Divider(
                thickness: 1.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  ' Order List',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              OrderList(),
              OrderList(),
              OrderList(),
              Divider(
                thickness: 1.2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  ' Choose Shipping ',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              ShippingType(),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(115),
                    color: cblack,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Conform To Payment',
                        style: TextStyle(
                            color: cwhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: cwhite,
                        size: 20,
                      )
                    ],
                  )),
                ),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: cmain, borderRadius: BorderRadius.circular(15)),
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
