import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class ButtonPart extends StatelessWidget {
  const ButtonPart({
    super.key,
    required this.msize,
  });

  final Size msize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: cmainwhite,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            child: Container(
              height: double.maxFinite,
              width: .6 * msize.width,
              decoration: BoxDecoration(
                color: cblack,
                // border: Border.all(color: cdark),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Buy Now',
                      style: TextStyle(
                          color: cwhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: cwhite,
                      size: 27,
                    )
                  ]),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: cmain,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 50,
                width: 110,
                child: const Icon(
                  Icons.shopping_cart_checkout,
                  color: cwhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
