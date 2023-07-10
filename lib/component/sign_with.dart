import 'package:book_store/constant.dart';
import 'package:flutter/material.dart';

class SignWithWidget extends StatelessWidget {
  const SignWithWidget({
    super.key,
    required this.width,
    required this.text,
    required this.height,
  });

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 2,
              width: (width - 88) / 3,
              color: lightGrey,
            ),
            SizedBox(width: width * 0.04),
            Text(
              text,
              style: smallBlackTextStyle,
            ),
            SizedBox(width: width * 0.04),
            Container(
              height: 2,
              width: (width - (width * 0.06) * 2) / 3,
              color: lightGrey,
            )
          ],
        ),
        SizedBox(height: height * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyContainer(
              width: width,
              height: height,
              imgURL: 'assets/google_icon.png',
              text: 'GOOGLE',
            ),
            SizedBox(width: width * 0.04),
            MyContainer(
              width: width,
              height: height,
              imgURL: 'assets/facebook_icon.png',
              text: 'FACEBOOK',
            )
          ],
        )
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.width,
    required this.text,
    required this.imgURL,
    required this.height,
  });

  final double width;
  final double height;

  final String text;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.085,
      width: (width / 2) - (width * 0.09),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0.2,
            blurRadius: 15,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(imgURL),
          Text(
            text,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
