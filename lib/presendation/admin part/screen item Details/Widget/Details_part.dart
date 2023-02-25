import 'package:flutter/material.dart';

class DetailsTextPart extends StatelessWidget {
  const DetailsTextPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Chicken Burger',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Burger',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            '₹299',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Text(
              'Disctription',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'To get a more detailed understanion, and tomato majority of consumers. However, more specific preferences can vary depending on the type of consumer. For example, pepper jack cheese is preferred more by those aged 25 to 34, and BBQ sauce is more likely to be preferred by men and those younger than 34. ',
            textAlign: TextAlign.left,
            softWrap: true,
            textWidthBasis: TextWidthBasis.parent,
          ),
        ],
      ),
    );
  }
}
