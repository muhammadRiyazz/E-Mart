import 'package:emart/core/constands/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

class ActiveOrders extends StatelessWidget {
  const ActiveOrders({super.key});

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
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: cwhite, borderRadius: BorderRadius.circular(18)),
                height: .18 * msize.height,
                child: Row(
                  children: [
                    SimpleShadow(
                      opacity: 0.03,
                      child: Container(
                        height: double.maxFinite,
                        width: .33 * msize.width,
                        decoration: BoxDecoration(
                            color: cmainwhite,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'lib/assets/pngegg.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 3, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chese Burger',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Qty = 6',
                              style: TextStyle(fontSize: 16, color: cgrey),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: cmainwhite,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              padding: EdgeInsets.all(7),
                              child: Text(
                                'In Delivery',
                                style: TextStyle(fontSize: 14, color: cgrey),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '₹ 299',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SimpleShadow(
                                  child: Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        color: cmain,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Trck Order',
                                        style: const TextStyle(
                                            color: cwhite,
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
          ),
        );
      },
    );
  }
}
