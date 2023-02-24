import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class Pageviewlast extends StatelessWidget {
  const Pageviewlast({
    Key? key,
    required this.mysize,
  }) : super(key: key);

  final Size mysize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: mysize.height * 0.5,
          child: Image.asset('assets/Illustartion.png'),
        ),
        // hsizedbox15,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            'Select the Favorities Menu',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        // hsizedbox20,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 42),
          child: const Text(
            "Now eat well, don't leave the house,You can choose your favorite food only with one click ",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: cgrey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
