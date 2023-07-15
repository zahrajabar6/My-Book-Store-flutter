import 'package:book_store/constant.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Favorite',
          style: bigTitleTextStyle,
        ),
      ),
    );
  }
}
