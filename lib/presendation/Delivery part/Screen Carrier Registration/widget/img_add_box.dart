import 'package:flutter/material.dart';

import '../../../../core/constands/colors.dart';

class ImgAddBox extends StatelessWidget {
  const ImgAddBox({super.key, required this.tagtext});
  final String tagtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: cmainwhite, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(tagtext),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.camera_alt_rounded,
                color: cgrey,
              )
            ],
          ),
          Container(
            width: 100,
            height: double.infinity,
            color: cmain,
          )
        ],
      ),
    );
  }
}
