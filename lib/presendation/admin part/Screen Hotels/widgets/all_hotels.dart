import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../Screen Carrier Details/Screen_Carrier_Details.dart';
import '../../Screen Hotel Details/screen_hotel_hetails.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return SimpleShadow(
          opacity: 0.2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Container(
              decoration: BoxDecoration(
                  color: cwhite, borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HotelDetails();
                    },
                  ));
                },
                leading: Container(
                    decoration: BoxDecoration(
                        color: cmainwhite,
                        borderRadius: BorderRadius.circular(10)),
                    height: 100,
                    width: 60,
                    child: Icon(Icons.food_bank)),
                title: Text('Arabien Majlis'),
                subtitle: Text('Palarivettam, Kochi'),
              ),
            ),
          ),
        );
      },
    );
  }
}
