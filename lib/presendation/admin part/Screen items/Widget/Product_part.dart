import 'package:emart/presendation/admin%20part/screen%20item%20Details/Screen_item_Details.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../../core/constands/colors.dart';

class ProductPart extends StatelessWidget {
  const ProductPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
          childAspectRatio: 1,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return SimpleShadow(
              opacity: 0.2,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ItemDetails();
                    },
                  ));
                },
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
              ),
            );
          })),
    );
  }
}
