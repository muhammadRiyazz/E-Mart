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
import '../Screen Carrier Registration/carrier_registration.dart';

class ScreenCarrierLogin extends StatelessWidget {
  ScreenCarrierLogin({super.key});

  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
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
                            'Login Your Account',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextFieldsCarrierLogin(
                      icon: const Icon(Icons.person),
                      controller: namecontroller,
                      title: 'User Email'),
                  SizedBox(
                    height: 15,
                  ),
                  TextFieldsCarrierLogin(
                      icon: const Icon(Icons.key_outlined),
                      controller: passwordcontroller,
                      title: 'Password'),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Forget Password',
                        style: TextStyle(fontSize: 15, color: cgrey),
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
                          return Navigation();
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
                          'Login',
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
                            'Don’t have an account ?',
                            style: TextStyle(fontSize: 16, color: cgrey),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ScreenCarrierRegistration();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              ' Register',
                              style: TextStyle(fontSize: 16, color: ontaptext),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
