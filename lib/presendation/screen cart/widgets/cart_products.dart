import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final msize = MediaQuery.of(context).size;

    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 6,
          );
        },
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
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
                      color: cmainwhite,
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    'lib/assets/pngegg.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 3, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Chese Burger',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.delete_outline_rounded,
                              color: cdark,
                            )
                          ],
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
                            Container(
                              padding: EdgeInsets.all(6),
                              width: 140,
                              height: 33,
                              decoration: BoxDecoration(
                                  color: cmainwhite,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(
                                    Icons.add,
                                    size: 16,
                                  ),
                                  Text(
                                    index.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Icon(
                                    Icons.add,
                                    size: 16,
                                  ),
                                ],
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
          );
        },
      ),
    );
  }
}
