import 'package:emart/presendation/Delivery%20part/Screen%20Carrier%20Registration/widget/img_add_box.dart';
import 'package:emart/presendation/Delivery%20part/widget/succes_page.dart';
import 'package:emart/presendation/Delivery%20part/Screen%20Carrier%20Sign%20In/widget/Carrier_login_field.dart';
import 'package:emart/presendation/Hotels%20Part/screen%20hotel%20Registration/widget/hotel_registration_fiels.dart';
import 'package:emart/presendation/intro%20screens/screen%20login.dart/widget/Textfield.dart';
import 'package:emart/presendation/intro%20screens/screen%20sign%20up/screen_signup.dart';
import 'package:emart/presendation/intro%20screens/widgets/Or_Divider.dart';
import 'package:emart/presendation/intro%20screens/widgets/account_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constands/colors.dart';
import '../../user part/Navigation/navigation.dart';
import '../Screen Hotel sign in/hotel_signin.dart';

class ScreenHotelRegistration extends StatefulWidget {
  const ScreenHotelRegistration({super.key});

  @override
  State<ScreenHotelRegistration> createState() =>
      ScreenHotelRegistrationState();
}

class ScreenHotelRegistrationState extends State<ScreenHotelRegistration> {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController namecontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  final TextEditingController cnfrmpasswordcontroller = TextEditingController();

  final TextEditingController locationcontroller = TextEditingController();

  final TextEditingController controller = TextEditingController();

  final TextEditingController phonenocontroller = TextEditingController();
  final TextEditingController hotelcontroller = TextEditingController();
  final TextEditingController pincodecontroller = TextEditingController();
  final TextEditingController landmarkcontroller = TextEditingController();

  final List<String> gender = ['Male', 'Female', 'other'];
  final List<String> education = [
    'Degree',
    '+2',
    'Diploma',
    '10th',
    'under 10th'
  ];

  String gendervalue = 'Male';
  String educatiovalue = 'Degree';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Expanded(
            child: ListView(
              children: [
                SizedBox(
                    height: 150,
                    child: Center(child: Image.asset('assets/log in.png'))),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Center(
                        child: Text(
                          'Register Your Account',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.person),
                    controller: namecontroller,
                    title: 'User Name'),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.email),
                    controller: emailcontroller,
                    title: 'User Email'),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.key_outlined),
                    controller: passwordcontroller,
                    title: 'Password'),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.lock),
                    controller: cnfrmpasswordcontroller,
                    title: 'Conform Password'),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.food_bank_rounded),
                    controller: hotelcontroller,
                    title: 'Hotel Name'),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.phone),
                    controller: passwordcontroller,
                    title: 'Phone Number'),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.location_pin),
                    controller: locationcontroller,
                    title: 'Location'),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.podcasts_sharp),
                    controller: pincodecontroller,
                    title: 'Pin code'),
                TextFieldsHotelRegistration(
                    icon: const Icon(Icons.my_location_rounded),
                    controller: landmarkcontroller,
                    title: 'Land MarK'),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: cmainwhite,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Add License',
                          style: TextStyle(
                              color: cgrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.file_copy,
                          color: cgrey,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return RegistationSuccesPage(
                          ontap: null,
                          title: 'Hotel',
                        );
                      },
                    ));
                  },
                  child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: cmain),
                      width: double.infinity,
                      height: 50,
                      child: const Center(
                          child: Text(
                        'Register',
                        style: TextStyle(color: cwhite),
                      ))),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Allready an have a account ?',
                          style: TextStyle(fontSize: 16, color: cgrey),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return ScreenHotelLogin();
                              },
                            ), (route) => false);
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(fontSize: 16, color: ontaptext),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
