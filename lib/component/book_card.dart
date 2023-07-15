import 'package:flutter/material.dart';

import '../constant.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.height,
    required this.width,
    required this.bookTitle,
    required this.bookAuther,
    required this.bookPrice,
  });

  final double height;
  final double width;
  final String bookTitle;
  final String bookAuther;
  final String bookPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height * 0.25,
          width: width * 0.4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/books/love.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
          bookAuther,
          style: bookAuthorStyle,
        ),
        Text(
          bookTitle,
          style: bookTitleStyle,
        ),
        SizedBox(
          height: height * 0.02,
        ),
      ],
    );
  }
}
