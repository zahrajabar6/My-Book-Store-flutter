import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.icon,
    required this.category,
    required this.width,
    required this.height,
  });

  final IconData icon;
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
            child: Icon(
              icon,
              size: 40,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          category,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
