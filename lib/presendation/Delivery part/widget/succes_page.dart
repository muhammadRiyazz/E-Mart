import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/Delivery%20part/Screen%20Carrier%20Sign%20In/carrier_login.dart';
import 'package:flutter/material.dart';

class RegistationSuccesPage extends StatelessWidget {
  RegistationSuccesPage({Key? key, required this.ontap, required this.title})
      : super(key: key);

  double screenWidth = 600;

  double screenHeight = 400;

  Color textColor = const Color(0xFF32567A);

  final String title;
  final ontap;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 170,
                padding: const EdgeInsets.all(35),
                decoration: BoxDecoration(
                  color: themeColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.done_outline_sharp,
                  color: cwhite,
                  size: 72,
                )),
            SizedBox(height: screenHeight * 0.02),
            Text(
              "Thank You!",
              style: TextStyle(
                color: themeColor,
                fontWeight: FontWeight.w600,
                fontSize: 36,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Your $title Registration Request done\n Successfully",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            SizedBox(height: screenHeight * 0.15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextButton(
                onPressed: ontap,
                child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: cmain),
                    width: double.infinity,
                    height: 50,
                    child: const Center(
                        child: Text(
                      'Done',
                      style: TextStyle(color: cwhite),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Color themeColor = const Color(0xFF43D19E);
