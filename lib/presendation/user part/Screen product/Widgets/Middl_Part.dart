import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class MiddleTextsPart extends StatelessWidget {
  const MiddleTextsPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chicken Burger',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            '₹299',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              children: const [
                Text(
                  '4.9',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: cyellow,
                ),
                Text(
                  '     (1.1k Reviews)',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blueGrey),
                ),
              ],
            ),
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
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Similar Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 76, 93, 237)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
