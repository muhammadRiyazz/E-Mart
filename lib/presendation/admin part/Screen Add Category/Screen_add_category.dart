import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(5),
              title: Text(
                'Checkout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              //  trailing: Icon(Icons.search),
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    // size: 22,
                    color: cblack,
                  )),
            ),
            Center(
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
                            color: cgrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: cwhite,
                          ),
                        )))
              ]),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: SimpleShadow(
                opacity: 0.0,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Category Name',
                    filled: true,
                    fillColor: cmainwhite,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(115),
                    color: cmain,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                      child: Text(
                    'Add',
                    style: TextStyle(
                        color: cwhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
