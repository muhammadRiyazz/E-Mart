import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/admin%20part/Order%20tab%20views/widgets/some_other_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

class ActiveOrderDetails extends StatelessWidget {
  const ActiveOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final msize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(5),
              title: const Text(
                'Order Details',
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
            SimpleShadow(
              opacity: 0.2,
              child: Container(
                decoration: BoxDecoration(
                    color: cwhite, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 90,
                            decoration: BoxDecoration(
                                color: cmainwhite,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              'assets/chicken 1.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'bucket Chicken',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Chicken',
                                  style: TextStyle(fontSize: 17, color: cgrey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: cmainwhite,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'qty -3',
                                        style: TextStyle(
                                            fontSize: 16, color: cgrey),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const DividarDetails(),
                      const Text(
                        'Muhammad Riyaz',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const DetailsText(label: 'Male'),
                      const DetailsText(label: '7034612195'),
                      const DetailsText(label: 'riyazmuahmmad786rz@gmail.com'),
                      const DividarDetails(),
                      const DetailsText(label: 'Pulikkalakandiyil (H),Elayoor'),
                      const DetailsText(label: 'areacode,Malppuram'),
                      const DetailsText(label: 'Kerala'),
                      const DetailsText(label: '673639'),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 7,
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (context) {
                            //     return ScreenPayment();
                            //   },
                            // ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: cmainwhite,
                            ),
                            height: 40,
                            width: double.infinity,
                            child: const Center(
                                child: Icon(
                              Icons.location_pin,
                              color: cblack,
                              size: 20,
                            )),
                          ),
                        ),
                      ),
                      const DividarDetails(),
                      const Text(
                        'Carrier Details',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const DetailsText(label: 'Sanjo p'),
                      const DetailsText(label: '7034612195'),
                      const DividarDetails(),
                      const Prices(label: 'Amount', price: '₹ 399'),
                      const Prices(label: 'Delivery Charge', price: '₹ 50'),
                      const Prices(label: 'Gst', price: '₹ 10'),
                      const Prices(label: 'Discount', price: '₹ 99'),
                      const DividarDetails(),
                      const Prices(label: 'Total', price: '₹ 300'),
                      const DividarDetails(),
                      const Prices(
                          label: 'Payment Methord', price: 'Cash on Delivery'),
                      const Prices(label: 'Payment Status', price: 'Paid'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
