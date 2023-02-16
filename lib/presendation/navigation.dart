import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:emart/presendation/screen_home/screen_home_.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});
  // final PageController pageController = PageController();
  final List<Widget> pages = [
    ScreenHome(),
    ScreenHome(),
    ScreenHome(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.black,
      bottomNavigationBar: Bottumnavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: IndexValueNotifier,
          builder: (context, int index, child) {
            return pages[index];
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
          padding: const EdgeInsets.all(12.0),
          child: CustomNavigationBar(
              currentIndex: newindex,
              onTap: (index) {
                IndexValueNotifier.value = index;
              },
              borderRadius: const Radius.circular(20.0),
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
              ]),
        );
      },
    );
  }
}
