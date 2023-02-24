import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/Screen%20product/Widgets/Button_part.dart';
import 'package:emart/presendation/Screen%20product/Widgets/Middl_Part.dart';
import 'package:emart/presendation/Screen%20product/Widgets/similar_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenProduct extends StatelessWidget {
  const ScreenProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final msize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      decoration: const BoxDecoration(
                          color: cmainwhite,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(80))),
                      width: double.infinity,
                      height: 0.33 * msize.height,
                      child: Image.asset(
                        'assets/pngegg.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: cmain,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 40,
                          width: 40,
                          child: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: cwhite,
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
                MiddleTextsPart(),
                SimilarProduct(),
              ],
            ),
          ),
          ButtonPart(msize: msize)
        ],
      )),
    );
  }
}
