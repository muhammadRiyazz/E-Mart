import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/user%20part/screen_home/widgets/category_part.dart';
import 'package:emart/presendation/user%20part/screen_home/widgets/products_grid.dart';
import 'package:emart/presendation/user%20part/screen_home/widgets/title_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Screen offers/Screen_offers.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitlePaer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: cmainwhite,
                          prefixIcon: const Icon(Icons.search_rounded),
                          contentPadding: EdgeInsets.zero,
                          hintText: 'Search Products',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)))),
                ),
                // Container(
                //   color: Colors.black12,
                //   child: Icon(
                //     Icons.menu_open_sharp,
                //   ),
                //   width: 50,
                // )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ScreenOffers();
                },
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 192, 140, 101),
                  borderRadius: BorderRadius.circular(10)),
              height: 140,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 76, 93, 237)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60, child: CategoryPart()),
          // Padding(
          //   padding: const EdgeInsets.only(top: 5, bottom: 8),
          //   child: Text(
          //     'Most Popular',
          //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          //   ),
          // ),
          ProductsGrid(),
        ],
      ),
    );
  }
}
