import 'dart:developer';

import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/widgets/screen_title_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChooseShippingAddress extends StatefulWidget {
  ChooseShippingAddress({super.key});

  @override
  State<ChooseShippingAddress> createState() => ChooseShippingAddressState();
}

class ChooseShippingAddressState extends State<ChooseShippingAddress> {
  String? shipping;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cmainwhite,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Titlepart(
                  ontap: () {
                    Navigator.pop(context);
                  },
                  title: ' Choose Shipping Address'),
            ),
            RadioTile(
                shipping: shipping,
                title: 'Economy',
                price: 20,
                subtitile: 'Estimated Arrival Dec 20',
                value: 'Economy',
                ontap: (value) {
                  setState(() {
                    shipping = value;
                  });
                }),
            RadioTile(
                shipping: shipping,
                title: 'Regular',
                price: 30,
                subtitile: 'Estimated Arrival Dec 18',
                value: 'Regular',
                ontap: (value) {
                  setState(() {
                    shipping = value;
                  });
                }),
            RadioTile(
                shipping: shipping,
                title: 'Cargo',
                price: 40,
                subtitile: 'Estimated Arrival Dec 15',
                value: 'Cargo',
                ontap: (value) {
                  setState(() {
                    shipping = value;
                  });
                }),
            RadioTile(
                shipping: shipping,
                title: 'Express',
                price: 50,
                subtitile: 'Estimated Arrival Tomorrow',
                value: 'Express',
                ontap: (value) {
                  setState(() {
                    shipping = value;
                  });
                }),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  log(shipping!);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(115),
                    color: cblack,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                      child: Text(
                    'Apply',
                    style: TextStyle(
                        color: cwhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class RadioTile extends StatelessWidget {
  const RadioTile(
      {super.key,
      required this.shipping,
      required this.ontap,
      required this.value,
      //  required this.icon,
      required this.price,
      required this.subtitile,
      required this.title});

  final String? shipping;
  final ontap;
  final String value;
  final int price;
  final String title;
  final String subtitile;
  //final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: cwhite, borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          // contentPadding: EdgeInsets.zero,
          trailing: SizedBox(
            width: 80,
            child: Row(
              children: [
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.edit,
                      color: cblack,
                    )),
                Radio(
                    fillColor:
                        MaterialStateColor.resolveWith((states) => cblack),
                    value: value,
                    groupValue: shipping,
                    onChanged: ontap)
              ],
            ),
          ),
          subtitle: Text(subtitile),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: CircleAvatar(
              backgroundColor: cmainwhite,
              child: Icon(
                Icons.location_pin,
                color: cblack,
              )),
        ),
      ),
    );
  }
}
