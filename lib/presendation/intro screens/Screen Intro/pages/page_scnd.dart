import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PageviewScnd extends StatelessWidget {
  const PageviewScnd({
    Key? key,
    required this.mysize,
  }) : super(key: key);

  final Size mysize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: mysize.height * 0.5,
          //  color: mGrey,
          child: Image.asset('assets/Illustration 2.png'),
        ),
        // hsizedbox15,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            'Good food at a cheap price',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        //  hsizedbox20,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            'You can eat at expensive restaurants with affordable price ',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: cgrey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
