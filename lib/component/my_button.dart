import 'package:book_store/constant.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    this.onPressed,
  });

  final String text;
  final double width;
  final double height;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith((states) => lightGrey),
        ),
        onPressed: onPressed,
        child: Container(
          decoration: BoxDecoration(
              color: mainBlack, borderRadius: BorderRadius.circular(24)),
          height: height * 0.085,
          width: double.maxFinite,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )),
        ));
  }
}
