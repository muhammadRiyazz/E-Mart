import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../core/constands/colors.dart';
import 'Widget/Image_part.dart';
import 'Widget/TextFields.dart';

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
              title: const Text(
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
            ProductPhotoPart(),
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
