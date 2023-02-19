import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../Screen product/Screen_product.dart';

class CategoryProductsGrid extends StatelessWidget {
  const CategoryProductsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        //  semanticChildCount: 5,
        physics: ScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ScreenProduct();
                },
              ));
            },
            child: SimpleShadow(
              opacity: 0.1,
              child: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Container(
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                      color: cwhite, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              //   color: ,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            'lib/assets/pngegg.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Chese Burger',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              Text('1 Kg'),
                              Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Text(
                                  '₹ 366',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: cmain,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.add_shopping_cart_rounded,
                              color: cwhite,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 5.0, mainAxisSpacing: 10.0),
      ),
    );
  }
}
