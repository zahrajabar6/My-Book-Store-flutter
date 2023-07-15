import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.category,
    required this.width,
    required this.height,
    required this.imgURL,
  });

  final String imgURL;
  final String category;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.02),
          decoration: BoxDecoration(
              color: Colors.grey.shade100, shape: BoxShape.circle),
          child: Padding(
              padding: EdgeInsets.all(width * 0.02),
              child:
                  SizedBox(height: 30, width: 30, child: Image.asset(imgURL))),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          category,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ],
    );
  }
}
