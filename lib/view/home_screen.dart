import 'package:book_store/component/category.dart';
import 'package:book_store/constant.dart';
import 'package:book_store/models/book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        TextField(
          decoration: kTextFieldDecoration.copyWith(
              hintText: 'Find your favorite book..',
              fillColor: Colors.grey.shade100),
        ),
        SizedBox(
          height: height * 0.30,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: Book.categories
                  .map((e) => CategoriesWidget(
                        category: e,
                        icon: Icons.circle,
                        height: width,
                        width: height,
                      ))
                  .toList()),
        ),
      ]),
    );
  }
}
