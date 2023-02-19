import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final msize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 7, right: 5),
      child: SimpleShadow(
        opacity: 0.06,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: cwhite, borderRadius: BorderRadius.circular(18)),
          height: .15 * msize.height,
          child: Row(
            children: [
              Container(
                height: double.maxFinite,
                width: .30 * msize.width,
                decoration: BoxDecoration(
                    color: cmainwhite, borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'lib/assets/pizza 1.png',
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 3, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chese Burger',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Burger',
                        style: TextStyle(fontSize: 16, color: cgrey),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₹ 299',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SimpleShadow(
                            opacity: 0.3,
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: cmainwhite,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '3',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
