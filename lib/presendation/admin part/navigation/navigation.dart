import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../AD_Screen_home.dart/admin_home_screen.dart';
import '../Screen Carriers/screen_carriers.dart';
import '../Screen Hotels/Screen_Hotels.dart';
import '../Screen order/Screen_order.dart';

ValueNotifier<int> indexValueNotifier = ValueNotifier(0);

class NavigationAdmin extends StatelessWidget {
  NavigationAdmin({
    super.key,
  });

  final page = [
    AdScreenHome(),
    ScreenOrder(),
    ScreenCarriers(),
    ScreenHotels(),
  ];

  //int pageintex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexValueNotifier,
      builder: (context, int index, child) {
        return Scaffold(
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: page[indexValueNotifier.value],
          )),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                indexValueNotifier.value = value;
              },
              currentIndex: index,
              unselectedItemColor: cgrey,
              selectedItemColor: cblack,
              items: const [
                BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: 'Oeder', icon: Icon(Icons.shopping_cart)),
                BottomNavigationBarItem(
                    label: 'Carrier', icon: Icon(Icons.person)),
                BottomNavigationBarItem(
                    label: 'Hotels', icon: Icon(Icons.food_bank)),
              ]),
        );
      },
    );
  }
}
