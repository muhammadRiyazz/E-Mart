import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../AD_Screen_home.dart/admin_home_screen.dart';

class NavigationAdmin extends StatefulWidget {
  NavigationAdmin({
    super.key,
  });

  @override
  State<NavigationAdmin> createState() => _NavigationAdminState();
}

class _NavigationAdminState extends State<NavigationAdmin> {
  final page = [
    AdScreenHome(),
    AdScreenHome(),
    AdScreenHome(),
    AdScreenHome(),
  ];

  int pageintex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: page[pageintex],
      )),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              pageintex = value;
            });
          },
          currentIndex: pageintex,
          unselectedItemColor: cgrey,
          selectedItemColor: cblack,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Oeder', icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          ]),
    );
  }
}
