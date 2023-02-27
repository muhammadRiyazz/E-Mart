import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../core/constands/colors.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(5),
              title: const Text(
                'Hotel Details',
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
            Expanded(
                child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  //color: cwhite,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const FieldsData(
                      titlekey: 'Hotel Name', value: 'Farsa Hotal'),
                  const FieldsData(
                      titlekey: 'Phone Number', value: '7034612195'),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Divider(
                      thickness: 1.3,
                    ),
                  ),
                  const Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 18,
                      color: cblack,
                    ),
                  ),
                  const AddressText(Address: 'Pilikkalakandiyil (H)'),
                  AddressText(Address: 'Kavanor,Malappuram,Kerala'),
                  AddressText(Address: '673639'),
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
                      child: SimpleShadow(
                        sigma: 6,
                        opacity: 0.2,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: SimpleShadow(
                      sigma: 7,
                      opacity: 0.2,
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: cmainwhite,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'View License',
                                style: TextStyle(color: cblack, fontSize: 15),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.file_copy_rounded,
                                color: cgrey,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: cmain,
                            ),
                            height: 50,
                            width: double.infinity,
                            child: const Center(
                                child: Text(
                              'Accept',
                              style: TextStyle(
                                  color: cwhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: cmain,
                            ),
                            height: 50,
                            width: double.infinity,
                            child: const Center(
                                child: Text(
                              'Delete',
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
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}

class AddressText extends StatelessWidget {
  const AddressText({super.key, required this.Address});
  final String Address;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        Address,
        style: TextStyle(fontSize: 15, color: cgrey),
      ),
    );
  }
}

class FieldsData extends StatelessWidget {
  const FieldsData({super.key, required this.titlekey, required this.value});
  final String titlekey;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titlekey,
            style: TextStyle(fontSize: 15, color: cgrey),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: cblack,
            ),
          )
        ],
      ),
    );
  }
}
