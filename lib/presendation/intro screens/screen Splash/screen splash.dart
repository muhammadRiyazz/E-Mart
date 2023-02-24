import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/intro%20screens/Screen%20Intro/screen_intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    gotonext(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        height: double.infinity,
        width: double.infinity,
        color: cblack,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 160),
                child: LoadingIndicator(
                  indicatorType: Indicator.semiCircleSpin,
                  colors: [Colors.white],
                  strokeWidth: 6,
                ))
          ],
        ),
      ),
    );
  }

  gotonext(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const ScreenIntro();
      },
    ));
  }
}
