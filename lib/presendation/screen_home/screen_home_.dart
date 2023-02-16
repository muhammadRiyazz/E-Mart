import 'package:emart/presendation/screen_home/widgets/category_part.dart';
import 'package:emart/presendation/screen_home/widgets/title_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitlePaer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_rounded),
                      hintText: 'Search Products',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)))),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //       color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            //   height: 190,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 76, 93, 237)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 8,
                  );
                },
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CategoryContainer();
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
