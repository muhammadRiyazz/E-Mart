import 'package:emart/presendation/Delivery%20part/Screen%20Carrier%20Registration/widget/carrier_registation_field.dart';
import 'package:emart/presendation/Delivery%20part/Screen%20Carrier%20Registration/widget/img_add_box.dart';
import 'package:emart/presendation/Delivery%20part/widget/succes_page.dart';
import 'package:emart/presendation/Delivery%20part/Screen%20Carrier%20Sign%20In/widget/Carrier_login_field.dart';
import 'package:emart/presendation/intro%20screens/screen%20login.dart/widget/Textfield.dart';
import 'package:emart/presendation/intro%20screens/screen%20sign%20up/screen_signup.dart';
import 'package:emart/presendation/intro%20screens/widgets/Or_Divider.dart';
import 'package:emart/presendation/intro%20screens/widgets/account_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constands/colors.dart';
import '../../user part/Navigation/navigation.dart';
import '../Screen Carrier Sign In/carrier_login.dart';

class ScreenCarrierRegistration extends StatefulWidget {
  ScreenCarrierRegistration({super.key});

  @override
  State<ScreenCarrierRegistration> createState() =>
      _ScreenCarrierRegistrationState();
}

class _ScreenCarrierRegistrationState extends State<ScreenCarrierRegistration> {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController namecontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  final TextEditingController cnfrmpasswordcontroller = TextEditingController();

  final TextEditingController agecontroller = TextEditingController();

  final TextEditingController controller = TextEditingController();

  final TextEditingController phonenocontroller = TextEditingController();

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
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
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
                TextFieldsCarrierRegistration(
                    icon: const Icon(Icons.person),
                    controller: namecontroller,
                    title: 'User Name'),
                TextFieldsCarrierRegistration(
                    icon: const Icon(Icons.email),
                    controller: emailcontroller,
                    title: 'User Email'),
                TextFieldsCarrierRegistration(
                    icon: const Icon(Icons.key_outlined),
                    controller: passwordcontroller,
                    title: 'Password'),
                TextFieldsCarrierRegistration(
                    icon: const Icon(Icons.lock),
                    controller: cnfrmpasswordcontroller,
                    title: 'Conform Password'),
                TextFieldsCarrierRegistration(
                    icon: const Icon(Icons.person),
                    controller: agecontroller,
                    title: 'Age'),
                TextFieldsCarrierRegistration(
                    icon: const Icon(Icons.phone),
                    controller: passwordcontroller,
                    title: 'Phone Number'),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: DropdownButton(
                    //   alignment: FractionalOffset.bottomRight,
                    value: gendervalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: gender.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        gendervalue = newValue!;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: DropdownButton(
                    // alignment: FractionalOffset.bottomRight,
                    value: educatiovalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: education.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        educatiovalue = newValue!;
                      });
                    },
                  ),
                ),
                ImgAddBox(tagtext: 'Add Photo'),
                SizedBox(
                  height: 10,
                ),
                ImgAddBox(tagtext: 'Add Aadhar'),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return RegistationSuccesPage(
                          title: 'Carrier',
                          ontap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return ScreenCarrierLogin();
                              },
                            ));
                          },
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
                            // Navigator.pushAndRemoveUntil(context,
                            //     MaterialPageRoute(
                            //   builder: (context) {
                            //     return ScreenSignUp();
                            //   },
                            // ), (route) => false);
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
