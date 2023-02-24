import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../Screen Add Category/Screen_add_category.dart';
import '../Screen add items/screen_add_items.dart';
import '../Screen items/Screen_Items.dart';

class AdScreenHome extends StatelessWidget {
  const AdScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Category',
          ),
          trailing: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ScreenCategory();
                  },
                ));
              },
              child: Icon(Icons.add)),
        ),
        Expanded(
          child: GridView.count(
              childAspectRatio: 1,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              crossAxisCount: 4,
              children: List.generate(10, (index) {
                return SimpleShadow(
                  opacity: 0.2,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ScreenItems();
                        },
                      ));
                    },
                    child: Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: cwhite,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/pizza 1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text('Pizza'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              })),
        ),
        ListTile(
          title: Text(
            'Popular Food ',
          ),
          trailing: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ScreenAddItems();
                  },
                ));
              },
              child: Icon(Icons.add)),
        ),
        Expanded(
          child: GridView.count(
              childAspectRatio: 1,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return SimpleShadow(
                  opacity: 0.2,
                  child: Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: cwhite, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/Grilled-Food-PNG-Transparent-File.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('Pizza'),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })),
        ),
      ],
    );
  }
}
