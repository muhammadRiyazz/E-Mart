import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../core/constands/colors.dart';

class ScreenPayment extends StatefulWidget {
  ScreenPayment({super.key});

  @override
  State<ScreenPayment> createState() => _ScreenPaymentState();
}

class _ScreenPaymentState extends State<ScreenPayment> {
  String? payment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            ///   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(5),
                title: Text(
                  'Payment Method',
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
              Column(
                children: [
                  PaymentMethodTile(
                    value: 'Cash on Delivery',
                    icon: const Icon(
                      Icons.wallet_rounded,
                      color: cblack,
                    ),
                    payment: payment,
                    ontap: (value) {
                      setState(() {
                        payment = value;
                      });
                    },
                    title: 'Cash on Delivery',
                  ),
                  PaymentMethodTile(
                    value: 'paypal',
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/pngwing.com.png'),
                    ),
                    payment: payment,
                    ontap: (value) {
                      setState(() {
                        payment = value;
                      });
                    },
                    title: 'PayPal',
                  ),
                  PaymentMethodTile(
                    value: 'google pay',
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/google-logo-9808.png'),
                    ),
                    payment: payment,
                    ontap: (value) {
                      setState(() {
                        payment = value;
                      });
                    },
                    title: 'Google Pay',
                  ),
                  PaymentMethodTile(
                    value: 'apple pay',
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/png-apple-logo-9711.png'),
                    ),
                    payment: payment,
                    ontap: (value) {
                      setState(() {
                        payment = value;
                      });
                    },
                    title: 'Apple Pay',
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(115),
                      color: cblack,
                    ),
                    height: 50,
                    width: double.infinity,
                    child: const Center(
                        child: Text(
                      'Conform payment',
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
        ),
      ),
    );
  }
}

class PaymentMethodTile extends StatelessWidget {
  const PaymentMethodTile(
      {super.key,
      required this.payment,
      required this.ontap,
      required this.title,
      required this.icon,
      required this.value});

  final String? payment;
  final ontap;
  final String title;
  final Widget icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SimpleShadow(
        opacity: 0.2,
        child: Container(
          decoration: BoxDecoration(
              color: cwhite, borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            contentPadding: EdgeInsets.all(8),
            trailing: Radio(
              fillColor: MaterialStateColor.resolveWith((states) => cblack),
              value: value,
              groupValue: payment,
              onChanged: ontap,
            ),
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: CircleAvatar(backgroundColor: cmainwhite, child: icon),
          ),
        ),
      ),
    );
  }
}
