import 'package:flutter/material.dart';

class WithAccountBox extends StatelessWidget {
  const WithAccountBox({super.key, required this.icon, required this.text});

  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color.fromARGB(221, 213, 207, 207))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset(
                      icon,
                      fit: BoxFit.cover,
                    )),
              ),
              Text(
                text,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
