import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../../core/constands/colors.dart';

Deletebottomsheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Color.fromARGB(0, 255, 193, 7),
    context: context,
    builder: (context) {
      return DeleteProduct();
    },
  );
}

class DeleteProduct extends StatelessWidget {
  const DeleteProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final msize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: cwhite),
      height: 300,
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 4,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color.fromARGB(255, 210, 207, 207)),
              ),
            ),
          ),
          Text(
            'Delete ?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1.2,
            ),
          ),
          SimpleShadow(
            sigma: 7,
            opacity: 0.09,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: cwhite, borderRadius: BorderRadius.circular(18)),
                height: .15 * msize.height,
                child: Row(
                  children: [
                    Container(
                      height: double.maxFinite,
                      width: .30 * msize.width,
                      decoration: BoxDecoration(
                          color: cmainwhite,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/pngfind.com-kfc-bucket-png-6463802.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 3, bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Chese Burger',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              'Hotal Farsa',
                              style: TextStyle(fontSize: 16, color: cgrey),
                            ),
                            //  Spacer(),
                            const Text(
                              '₹ 299',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1.2,
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 219, 216, 216),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Center(
                        child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 15, color: cblack),
                    )),
                  ),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: cblack, borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Yes, Delete',
                    style: TextStyle(fontSize: 15, color: cwhite),
                  )),
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
