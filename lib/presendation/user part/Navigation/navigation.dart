import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:emart/presendation/user%20part/Screen%20profile%20&%20Settings/Screen_profile_settings.dart';
import 'package:emart/presendation/user%20part/screen%20order/screen_order.dart';
import 'package:emart/presendation/user%20part/screen_home/screen_home_.dart';
import 'package:flutter/material.dart';

import '../../../core/constands/colors.dart';
import '../screen cart/screen_cart.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});
  // final PageController pageController = PageController();
  final List<Widget> pages = [
    ScreenHome(),
    ScreenCart(),
    ScreenOrders(),
    ScreenProfileSettings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: cmainwhite,
      bottomNavigationBar: Bottumnavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: IndexValueNotifier,
          builder: (context, int index, child) {
            return Scaffold(
              // backgroundColor: cmainwhite,
              body: pages[index],
            );
          },
        ),
      ),
    );
  }
}

ValueNotifier<int> IndexValueNotifier = ValueNotifier(0);

class Bottumnavigation extends StatelessWidget {
  Bottumnavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: IndexValueNotifier,
      builder: (context, newindex, child) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: CustomNavigationBar(
              currentIndex: newindex,
              onTap: (index) {
                IndexValueNotifier.value = index;
              },
              borderRadius: const Radius.circular(10.0),
              iconSize: 25,
              selectedColor: const Color.fromARGB(255, 46, 44, 53),
              strokeColor: const Color(0x30040307),
              unSelectedColor: const Color(0xffacacac),
              backgroundColor: Colors.white,
              items: [
                CustomNavigationBarItem(
                  icon: const Icon(Icons.home),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.shopping_bag_rounded),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.shopping_cart_rounded),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.person),
                ),
              ]),
        );
      },
    );
  }
}
