import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class PricePart extends StatelessWidget {
  const PricePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: SimpleShadow(
        opacity: 0.09,
        child: Container(
          padding: EdgeInsets.all(17),
          // height: 250,
          decoration: BoxDecoration(
              color: cwhite, borderRadius: BorderRadius.circular(15)),
          width: double.infinity,
          child: Column(
            children: [
              AmountPart(price: ' ₹ 399', label: 'Amount'),
              AmountPart(price: ' ₹ 40', label: 'Shipping'),
              AmountPart(price: ' ₹ 100', label: 'Discount'),
              Divider(
                thickness: 1.3,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(color: cgrey, fontSize: 18),
                    ),
                    Text(
                      '₹ 539',
                      style: TextStyle(
                          color: cblack,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AmountPart extends StatelessWidget {
  const AmountPart({
    super.key,
    required this.label,
    required this.price,
  });
  final String label;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: cgrey, fontSize: 17),
          ),
          Text(
            price,
            style: const TextStyle(
              color: cblack,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
