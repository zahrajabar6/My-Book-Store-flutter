import 'package:book_store/component/my_button.dart';
import 'package:book_store/component/sign_with.dart';
import 'package:book_store/view/home_screen.dart';
import 'package:book_store/view/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.06, vertical: height * 0.085),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign Up',
              style: bigTitleTextStyle,
            ),
            SizedBox(height: height * 0.02),
            const Text(
              'Full name',
              style: textBoxTitleTextStyle,
            ),
            SizedBox(height: height * 0.01),
            TextField(
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Your full name')),
            SizedBox(height: height * 0.03),
            const Text(
              'E-mail',
              style: textBoxTitleTextStyle,
            ),
            SizedBox(height: height * 0.01),
            TextField(
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Your email or phone')),
            SizedBox(height: height * 0.03),
            const Text(
              'Password',
              style: textBoxTitleTextStyle,
            ),
            SizedBox(height: height * 0.01),
            TextField(
              obscureText: true,
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Password',
                suffixIcon: const Icon(
                  CupertinoIcons.eye_fill,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            MyButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              text: 'SIGN UP',
              height: height,
              width: width,
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: smallGreyTextStyle,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    'Login.',
                    style: smallBlackTextStyle,
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.03),
            SignWithWidget(
              width: width,
              height: height,
              text: 'Sign up with',
            )
          ],
        ),
      ),
    );
  }
}
