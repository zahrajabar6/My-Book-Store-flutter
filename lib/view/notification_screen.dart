import 'package:book_store/constant.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Notification',
          style: bigTitleTextStyle,
        ),
      ),
    );
  }
}
