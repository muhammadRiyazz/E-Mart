import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/Screen%20Category%20Prodects/Widgets/Products.dart';
import 'package:emart/presendation/widgets/screen_title_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenCategoryProducts extends StatelessWidget {
  const ScreenCategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(5),
              title: Text(
                'Burger',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.search),
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    // size: 22,
                    color: cblack,
                  )),
            ),
            CategoryProductsGrid(),
          ],
        ),
      )),
    );
  }
}
