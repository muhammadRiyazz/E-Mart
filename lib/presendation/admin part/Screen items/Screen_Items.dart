import 'package:emart/presendation/admin%20part/Screen%20items/Widget/Product_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../core/constands/colors.dart';
import '../Screen add items/screen_add_items.dart';
import '../screen item Details/Screen_item_Details.dart';

class ScreenItems extends StatelessWidget {
  const ScreenItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ListTile(
              trailing: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ScreenAddItems();
                      },
                    ));
                  },
                  child: Icon(Icons.add)),
              contentPadding: EdgeInsets.all(5),
              title: const Text(
                'Category Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              //  trailing: Icon(Icons.search),
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    // size: 22,
                    color: cblack,
                  )),
            ),
            ProductPart(),
          ],
        ),
      )),
    );
  }
}
