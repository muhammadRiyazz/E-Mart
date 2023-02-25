import 'package:emart/core/constands/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../Order tab views/active_order_detail.dart';

class CompletedOrdersadmin extends StatelessWidget {
  const CompletedOrdersadmin({super.key});

  @override
  Widget build(BuildContext context) {
    final msize = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: SimpleShadow(
            opacity: 0.09,
            child: Padding(
              padding: const EdgeInsets.only(right: 4),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ActiveOrderDetails();
                    },
                  ));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: cwhite, borderRadius: BorderRadius.circular(18)),
                  height: .12 * msize.height,
                  child: Row(
                    children: [
                      SimpleShadow(
                        opacity: 0.03,
                        child: Container(
                          height: .33 * msize.width,
                          width: .22 * msize.width,
                          decoration: BoxDecoration(
                              color: cmainwhite,
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/chicken 1.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 3, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Chese Burger',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              const Text(
                                'Burger',
                                style: TextStyle(fontSize: 16, color: cgrey),
                              ),
                              const Spacer(),
                              const Text(
                                '₹ 299',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
