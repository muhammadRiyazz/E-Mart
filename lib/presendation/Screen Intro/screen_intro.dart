import 'package:emart/core/constands/colors.dart';
import 'package:emart/presendation/Navigation/navigation.dart';
import 'package:emart/presendation/Screen%20Intro/pages/page_first.dart';
import 'package:emart/presendation/Screen%20Intro/pages/page_scnd.dart';
import 'package:emart/presendation/Screen%20Intro/pages/page_thrd.dart';
import 'package:flutter/material.dart';

class ScreenIntro extends StatefulWidget {
  const ScreenIntro({super.key});

  @override
  State<ScreenIntro> createState() => _ScreenIntroState();
}

class _ScreenIntroState extends State<ScreenIntro> {
  Container buildDot(int index) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: 10,
      width: currentIndex == index ? 25 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cmain,
      ),
    );
  }

  int currentIndex = 0;

  PageController mycontroller = PageController();

  @override
  Widget build(BuildContext context) {
    //setbool();
    Size mysize = MediaQuery.of(context).size;
    List pages = [
      PageviewFirst(mysize: mysize),
      PageviewScnd(mysize: mysize),
      Pageviewlast(mysize: mysize),
    ];
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: mycontroller,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return pages[index];
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => buildDot(index),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  currentIndex == 2
                      ? Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return Navigation();
                          },
                        ))
                      : setState(() {
                          mycontroller.nextPage(
                            duration: const Duration(microseconds: 100),
                            curve: Curves.bounceIn,
                          );
                        });
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: cmain),
                  width: double.infinity,
                  height: 50,
                  child: Center(
                      child: currentIndex == 2
                          ? const Text(
                              'Get Start',
                              style: TextStyle(color: cwhite),
                            )
                          : const Text(
                              'Next',
                              style: TextStyle(color: cwhite),
                            )),
                )),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }

  // Future setbool() async {
  //   final _sharepreferances = await SharedPreferences.getInstance();
  //   final userlogin = _sharepreferances.setBool(kayname, true);
  // }
}
