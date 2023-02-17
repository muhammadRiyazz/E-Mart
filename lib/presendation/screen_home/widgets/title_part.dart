import 'package:flutter/material.dart';

class TitlePaer extends StatelessWidget {
  const TitlePaer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //  mainAxisAlignment: MainAxisAlignment.s,
      children: [
        Container(
          decoration: BoxDecoration(
              // color: Color.fromARGB(255, 243, 240, 240),
              borderRadius: BorderRadius.circular(9)),
          child: const Icon(
            Icons.menu,
            size: 32,
          ),
        ),
        const Text(
          '  E- ',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 132, 105, 24)),
        ),
        const Text(
          'MART',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              //color: Color.fromARGB(255, 243, 240, 240),
              borderRadius: BorderRadius.circular(9)),
          child: const Icon(
            Icons.account_circle_outlined,
            size: 29,
          ),
        ),
      ],
    );
  }
}
