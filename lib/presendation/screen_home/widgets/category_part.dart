import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

class CategoryPart extends StatefulWidget {
  const CategoryPart({super.key});

  @override
  State<CategoryPart> createState() => _CategoryPartState();
}

class _CategoryPartState extends State<CategoryPart> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 8,
        );
      },
      itemCount: 7,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {},
              child: SimpleShadow(
                opacity: 0.2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 18,
                  ),
                  decoration: BoxDecoration(
                      color: cwhite, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/assets/pngegg.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Burger',
                        style: TextStyle(
                            color: cblack,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    color: cmainwhite, borderRadius: BorderRadius.circular(5)),
                height: 4,
                width: 30,
              ),
            )
          ],
        );
      },
    );
  }
}
