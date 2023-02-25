import 'package:emart/presendation/admin%20part/screen%20item%20Details/Widget/Details_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constands/colors.dart';
import 'Widget/bottum_sheet.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final msize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(5),
            title: const Text(
              'Product Details',
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
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
          DetailsTextPart(),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Deletebottomsheet(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(115),
                  color: cmain,
                ),
                height: 50,
                width: double.infinity,
                child: const Center(
                    child: Text(
                  ' Delete',
                  style: TextStyle(
                      color: cwhite, fontSize: 16, fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
