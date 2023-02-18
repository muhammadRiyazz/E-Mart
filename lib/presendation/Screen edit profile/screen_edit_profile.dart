import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../core/constands/colors.dart';
import '../widgets/screen_title_part.dart';

class ScreenEditProfile extends StatefulWidget {
  ScreenEditProfile({super.key});

  @override
  State<ScreenEditProfile> createState() => _ScreenEditProfileState();
}

class _ScreenEditProfileState extends State<ScreenEditProfile> {
  final TextEditingController namecontroller =
      TextEditingController(text: 'Muhammed Riyaz');

  final TextEditingController phonenocontroller =
      TextEditingController(text: '7034612195');

  final TextEditingController emailcontroller =
      TextEditingController(text: '7034612195');
  List gender = ["Male", "Female", "Other"];

  String? select;
  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: cblack,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
            });
          },
        ),
        Text(title)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Titlepart(
                title: ' Edit Profile',
                ontap: () {
                  Navigator.pop(context);
                },
              ),
              Center(
                  child: SimpleShadow(
                opacity: 0.3,
                child: Stack(children: [
                  const SizedBox(
                    //color: cmain,
                    height: 130,
                    width: 130,
                  ),
                  Positioned(
                    bottom: 10,
                    top: 10,
                    left: 10,
                    right: 10,
                    child: Container(
                      // height: 110,
                      // width: 110,
                      decoration: BoxDecoration(
                          color: cwhite,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'lib/assets/profile-icon-png-899 (1).png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                              color: cgrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.mode_edit_outline_outlined,
                              color: cwhite,
                            ),
                          )))
                ]),
              )),
              EditTextFeilds(
                controller: namecontroller,
                topicon: const Icon(
                  Icons.person_2_sharp,
                  color: cgrey,
                ),
                toptitle: ' Name',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 13, bottom: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_add_alt_1_sharp,
                      color: cgrey,
                    ),
                    Text(
                      '  Gender',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: cgrey,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  addRadioButton(0, 'Male'),
                  addRadioButton(1, 'Female'),
                  addRadioButton(2, 'Others'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              EditTextFeilds(
                controller: namecontroller,
                topicon: const Icon(
                  Icons.phone,
                  color: cgrey,
                ),
                toptitle: ' Phone Number',
              ),
              EditTextFeilds(
                controller: emailcontroller,
                topicon: const Icon(
                  Icons.email,
                  color: cgrey,
                ),
                toptitle: ' Email',
              ),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    //  log(shipping!);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(115),
                      color: cblack,
                    ),
                    height: 50,
                    width: double.infinity,
                    child: const Center(
                        child: Text(
                      'Update',
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
      )),
    );
  }
}

class EditTextFeilds extends StatelessWidget {
  const EditTextFeilds(
      {super.key,
      required this.controller,
      required this.topicon,
      required this.toptitle});
  final Widget topicon;
  final String toptitle;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              topicon,
              Text(
                toptitle,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: cgrey,
                ),
              ),
            ],
          ),
          SimpleShadow(
            opacity: 0.1,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(contentPadding: EdgeInsets.zero),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
