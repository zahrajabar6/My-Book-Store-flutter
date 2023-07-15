import 'package:book_store/component/category.dart';
import 'package:book_store/constant.dart';
import 'package:book_store/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../component/book_card.dart';

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
        Padding(
          padding: EdgeInsets.only(
              left: width * 0.06,
              right: width * 0.06,
              top: height * 0.01,
              bottom: height * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: height * 0.06,
                  child: TextField(
                    decoration: kTextFieldDecoration.copyWith(
                        prefixIcon: const Icon(
                          Iconsax.search_normal_1,
                          color: mainBlack,
                        ),
                        hintText: 'Find your favorite book..',
                        fillColor: Colors.grey.shade100),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Container(
                height: height * 0.06,
                width: height * 0.06,
                decoration: BoxDecoration(
                    color: mainBlack, borderRadius: BorderRadius.circular(16)),
                child: const Icon(
                  CupertinoIcons.slider_horizontal_3,
                  color: bgwhite,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.14,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: Book.categories
                  .map((e) => CategoriesWidget(
                        category: e[0],
                        imgURL: e[1],
                        height: width,
                        width: height,
                      ))
                  .toList()),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.06),
          child: Wrap(
              spacing: width * 0.07,
              alignment: WrapAlignment.center,
              children: Book.books
                  .map(
                    (e) => BookCard(
                      height: height,
                      width: width,
                      bookTitle: e.bookTitle,
                      bookAuther: e.bookAuther,
                      bookPrice: e.bookPrice,
                    ),
                  )
                  .toList()),
        )
      ]),
    );
  }
}
