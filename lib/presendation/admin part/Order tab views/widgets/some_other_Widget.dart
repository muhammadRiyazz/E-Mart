import 'package:emart/core/constands/colors.dart';
import 'package:flutter/material.dart';

class DetailsText extends StatelessWidget {
  const DetailsText({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        label,
        style: TextStyle(fontSize: 17, color: cgrey),
      ),
    );
  }
}

class DividarDetails extends StatelessWidget {
  const DividarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Divider(
        thickness: 1.3,
      ),
    );
  }
}

class Prices extends StatelessWidget {
  const Prices({
    super.key,
    required this.label,
    required this.price,
  });
  final String label;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: cgrey, fontSize: 17),
          ),
          Text(
            price,
            style: const TextStyle(
              color: cblack,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
