import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 243, 243),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'lib/assets/2-2-burger-free-download-png.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Text('Burger'),
        ],
      ),
    );
  }
}
