import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class SimilarProduct extends StatelessWidget {
  const SimilarProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 5,
          );
        },
        scrollDirection: Axis.horizontal,
        physics: ScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) {
              //     return ScreenProduct();
              //   },
              // ));
            },
            child: Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: cmainwhite, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: cmain,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.add_shopping_cart_rounded,
                            color: cwhite,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Image.asset(
                      'lib/assets/pngegg.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
