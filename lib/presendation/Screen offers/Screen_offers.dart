import 'package:emart/presendation/widgets/screen_title_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenOffers extends StatelessWidget {
  const ScreenOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Titlepart(
                title: ' Special Offers',
                ontap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      )),
    );
  }
}
