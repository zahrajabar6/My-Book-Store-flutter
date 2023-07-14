import 'package:flutter/material.dart';

/*
width * 0.04 >> 16px
width * 0.06 >> 24px
 

height * 0.10 >> padding
height * 0.085 >> 72px
height * 0.04 >> 32px
height * 0.03 >> 24px
height * 0.02 >> 16px
height * 0.01 >> 8px
*/

const Color mainBlack = Color(0xff121212);
const Color grey = Color(0xFFBDBDBD);
const Color lightGrey = Color.fromARGB(255, 222, 221, 221);
const Color white = Color.fromARGB(230, 255, 255, 255);

const bigTitleTextStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

const smallBlackTextStyle =
    TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal);

const textBoxTitleTextStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey);

const smallGreyTextStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w200, color: Colors.grey);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: white,
  hintText: 'hint text',
  suffixIcon: null,
  hintStyle: TextStyle(color: grey),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: lightGrey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainBlack, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
