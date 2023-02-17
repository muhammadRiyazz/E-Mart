import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:emart/presendation/screen_home/screen_home_.dart';
import 'package:flutter/material.dart';

import '../../core/constands/colors.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});
  // final PageController pageController = PageController();
  final List<Widget> pages = [
    ScreenHome(),
    ScreenHome(),
    ScreenHome(),
    ScreenHome(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cwhite,
      bottomNavigationBar: Bottumnavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: IndexValueNotifier,
          builder: (context, int index, child) {
            return Scaffold(
              body: Padding(
                  child: pages[index],
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10)),
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
          padding: const EdgeInsets.all(6),
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
                  icon: const Icon(Icons.menu_book_rounded),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.account_circle),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.home),
                ),
              ]),
        );
      },
    );
  }
}
