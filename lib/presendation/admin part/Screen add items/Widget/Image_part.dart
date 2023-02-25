import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../../core/constands/colors.dart';

class ProductPhotoPart extends StatelessWidget {
  const ProductPhotoPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SimpleShadow(
      opacity: 0.3,
      child: Stack(children: [
        const SizedBox(
          //color: cmain,
          height: 130,
          width: 130,
        ),
        Positioned(
          bottom: 10,
          top: 10,
          left: 10,
          right: 10,
          child: Container(
            // height: 110,
            // width: 110,
            decoration: BoxDecoration(
                color: cwhite, borderRadius: BorderRadius.circular(20)),
            // child: Image.asset(
            //   'assets/profile-icon-png-899 (1).png',
            //   fit: BoxFit.fill,
            // ),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
                decoration: BoxDecoration(
                    color: cgrey, borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                    color: cwhite,
                  ),
                )))
      ]),
    ));
  }
}
