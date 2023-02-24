import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../core/constands/colors.dart';

class ScreenAddItems extends StatelessWidget {
  ScreenAddItems({super.key});
  final TextEditingController itemnamecontroller = TextEditingController();
  final TextEditingController categorynamecontroller = TextEditingController();

  final TextEditingController aboutcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(5),
              title: Text(
                'Add Item',
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
            ItemTextField(controller: itemnamecontroller, title: 'Item Name'),
            ItemTextField(
                controller: categorynamecontroller, title: 'Category Name'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                controller: aboutcontroller,
                decoration: InputDecoration(
                  hintText: 'about item',
                  filled: true,
                  fillColor: cmainwhite,
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

class ItemTextField extends StatelessWidget {
  const ItemTextField(
      {super.key, required this.controller, required this.title});
  final TextEditingController controller;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: title,
          filled: true,
          fillColor: cmainwhite,
        ),
      ),
    );
  }
}
