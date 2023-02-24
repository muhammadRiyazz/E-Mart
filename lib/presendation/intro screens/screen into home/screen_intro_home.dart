import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/intro%20screens/screen%20into%20home/widget/accounts_box.dart';
import 'package:emart/presendation/intro%20screens/screen%20login.dart/screen_login.dart';
import 'package:emart/presendation/intro%20screens/widgets/Or_Divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screen sign up/screen_signup.dart';

class ScreenIntroHome extends StatelessWidget {
  const ScreenIntroHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset('assets/log in.png'),
              )),
              const Text(
                "Let's you in",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: const [
                    WithAccountBox(
                      icon: 'assets/Facebook_Logo_(2019).png',
                      text: 'Continue with Facebook',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: WithAccountBox(
                        icon: 'assets/google-logo-9808.png',
                        text: 'Continue with Google',
                      ),
                    ),
                    WithAccountBox(
                      icon: 'assets/png-apple-logo-9711.png',
                      text: 'Continue with Apple',
                    ),
                  ],
                ),
              ),
              OrDivider(text: 'Or'),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenLogin();
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
                      'Sign in',
                      style: TextStyle(color: cwhite),
                    ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account ?',
                    style: TextStyle(fontSize: 17, color: cgrey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ScreenSignUp();
                        },
                      ));
                    },
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(fontSize: 17, color: ontaptext),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
