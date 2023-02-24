import 'package:emart/presendation/intro%20screens/screen%20login.dart/screen_login.dart';
import 'package:emart/presendation/intro%20screens/screen%20sign%20up/widgets/TextFieldSignUp.dart';
import 'package:emart/presendation/intro%20screens/widgets/account_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constands/colors.dart';
import '../../user part/Navigation/navigation.dart';
import '../widgets/Or_Divider.dart';

class ScreenSignUp extends StatelessWidget {
  ScreenSignUp({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController cnfrmpasswordcontroller = TextEditingController();

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
                              'Create Your Account',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFielsSignUo(
                        icon: const Icon(Icons.email),
                        controller: emailcontroller,
                        title: 'User Email'),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFielsSignUo(
                        icon: const Icon(Icons.key_outlined),
                        controller: passwordcontroller,
                        title: 'Password'),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFielsSignUo(
                        icon: const Icon(Icons.lock_outline_rounded),
                        controller: cnfrmpasswordcontroller,
                        title: 'Conform Password'),
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
                            'Sign up',
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
                              'Already an have a account ?',
                              style: TextStyle(fontSize: 16, color: cgrey),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return ScreenLogin();
                                  },
                                ), (route) => false);
                              },
                              child: const Text(
                                ' Sign in',
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
