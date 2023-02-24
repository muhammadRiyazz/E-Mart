import 'package:emart/presendation/user%20intro%20screens/screen%20login.dart/widget/Textfield.dart';
import 'package:emart/presendation/user%20intro%20screens/screen%20sign%20up/screen_signup.dart';
import 'package:emart/presendation/user%20intro%20screens/widgets/Or_Divider.dart';
import 'package:emart/presendation/user%20intro%20screens/widgets/account_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constands/colors.dart';
import '../../Navigation/navigation.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Center(
              child: Container(
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
                    TextFielsLogin(
                        icon: const Icon(Icons.email),
                        controller: emailcontroller,
                        title: 'User Email'),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFielsLogin(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: cmain),
                          width: double.infinity,
                          height: 50,
                          child: const Center(
                              child: Text(
                            'Login',
                            style: TextStyle(color: cwhite),
                          ))),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: OrDivider(text: 'Or Continue with'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AccountIcon(
                              img: 'assets/Facebook_Logo_(2019).png',
                              ontap: () {}),
                          AccountIcon(
                              img: 'assets/google-logo-9808.png', ontap: () {}),
                          AccountIcon(
                            img: 'assets/png-apple-logo-9711.png',
                            ontap: () {},
                          )
                        ],
                      ),
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
                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return ScreenSignUp();
                                  },
                                ), (route) => false);
                              },
                              child: const Text(
                                ' Sign Up',
                                style:
                                    TextStyle(fontSize: 16, color: ontaptext),
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
      ),
    );
  }
}
