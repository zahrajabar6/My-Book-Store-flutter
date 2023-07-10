import 'package:book_store/constant.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Sign up',
          style: bigTitleTextStyle,
        ),
      ),
    );
  }
}
