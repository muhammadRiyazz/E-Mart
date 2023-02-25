import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../Screen Carrier Details/Screen_Carrier_Details.dart';

class CarriersRequests extends StatelessWidget {
  const CarriersRequests({super.key});

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
                      return CarrierDetails();
                    },
                  ));
                },
                trailing: TextButton(
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: cmain,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Accept',
                            style: TextStyle(color: cwhite),
                          ),
                        ))),
                //  contentPadding: EdgeInsets.zero,
                leading: Container(
                  decoration: BoxDecoration(
                      color: cmainwhite,
                      borderRadius: BorderRadius.circular(10)),
                  height: 100,
                  width: 60,
                  child: Image.asset(
                    'assets/profile-icon-png-899 (1).png',
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text('sanjo'),
                subtitle: Text('7034612195'),
              ),
            ),
          ),
        );
      },
    );
  }
}
