import 'package:book_store/constant.dart';
import 'package:book_store/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            centerTitle: true,
            color: Colors.grey.shade50,
            foregroundColor: Colors.grey.shade50,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.grey.shade50,
              systemNavigationBarColor: Colors.grey.shade50,
              statusBarIconBrightness: Brightness.dark,
            ),
            titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600)),
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
            secondary: Colors.amber,
            seedColor: mainBlack,
            background: Colors.grey.shade50),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
