import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/screen%20checkout/screen_checkout.dart';
import 'package:flutter/material.dart';

class LastButtonPart extends StatelessWidget {
  const LastButtonPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: const BoxDecoration(
          color: cwhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Total Price',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: cdark),
                  ),
                  Text(
                    '₹ 299.00 /-',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ScreenCheckout();
                  },
                ));
              },
              child: Container(
                height: double.maxFinite,
                decoration: BoxDecoration(
                    color: cdark, borderRadius: BorderRadius.circular(18)),
                child: Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: cwhite),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
