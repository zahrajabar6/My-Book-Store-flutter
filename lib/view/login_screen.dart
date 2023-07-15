import 'package:book_store/component/my_button.dart';
import 'package:book_store/component/sign_with.dart';
import 'package:book_store/view/home_screen.dart';
import 'package:book_store/view/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.06, vertical: height * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Log In',
              style: bigTitleTextStyle,
            ),
            SizedBox(height: height * 0.06),
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
                  color: greyLv3,
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Forgot password?',
                  style: smallBlackTextStyle,
                ),
              ],
            ),
            SizedBox(height: height * 0.04),
            MyButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              text: 'LOGIN',
              height: height,
              width: width,
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have account? ',
                  style: smallGreyTextStyle,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()));
                  },
                  child: const Text(
                    'Sign up.',
                    style: smallBlackTextStyle,
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.03),
            SignWithWidget(
              width: width,
              height: height,
              text: 'Sign in with',
            )
          ],
        ),
      ),
    );
  }
}
