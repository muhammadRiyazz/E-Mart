import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class PageviewFirst extends StatelessWidget {
  const PageviewFirst({
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
          // color: mBlue,
          child: Image.asset(
              'lib/assets/Food-Delivery-Scooter-PNG-Isolated-Photo.png'),
        ),
        //  hsizedbox15,
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Choose Your Best Delicious \nFood Only',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        //  hsizedbox20,
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Don't Worry We are here to give the best\n to save your hunger problem ",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: cgrey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
