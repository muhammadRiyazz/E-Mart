import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../core/constands/colors.dart';
import '../Screen add items/screen_add_items.dart';

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
                            color: cwhite,
                            borderRadius: BorderRadius.circular(10)),
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
        ),
      )),
    );
  }
}
