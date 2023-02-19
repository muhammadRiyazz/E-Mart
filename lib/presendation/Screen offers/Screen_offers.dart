import 'dart:ffi';

import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/screen%20checkout/screen_checkout.dart';
import 'package:emart/presendation/widgets/screen_title_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class ScreenOffers extends StatelessWidget {
  ScreenOffers({super.key});
  final List<String> imgs = [
    // 'lib/assets/pngfind.com-kfc-chicken-bucket-png-3290413.png',
    'lib/assets/pngfind.com-kfc-bucket-png-6463802.png',
    'lib/assets/chicken 1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cwhite,
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
            SizedBox(
              height: 590,
              width: double.infinity,
              child: Swiper(
                physics: ScrollPhysics(),
                //  indicatorLayout: PageIndicatorLayout.SCALE,
                pagination: SwiperPagination(),
                // control: SwiperControl(),
                autoplay: true,
                autoplayDelay: 10000,
                duration: 1220,
                //viewportFraction: 0.75,
                scale: 0.7,
                itemCount: imgs.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 350,
                        width: double.infinity,
                        // color: cmain,
                        child: Image.asset(
                          imgs[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '8 pc Hot & Crispy Chicken',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                '₹ 499',
                                style: TextStyle(
                                    color: cmain,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                '10 Peri Peri chicken strips & 1 Dynamite Spicy Mayo Sauce Bottle (200gm)',
                                style: TextStyle(
                                  color: cgrey,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenCheckout();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(115),
                    color: cmain,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Buy Now',
                        style: TextStyle(
                            color: cwhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: cwhite,
                        size: 20,
                      )
                    ],
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
