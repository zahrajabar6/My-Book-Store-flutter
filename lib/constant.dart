import 'package:flutter/material.dart';

/*
width * 0.02 >> 8px
width * 0.04 >> 16px
width * 0.06 >> 24px
 

height * 0.10 >> padding
height * 0.085 >> 72px
height * 0.06 >> 48px
height * 0.04 >> 32px
height * 0.03 >> 24px
height * 0.02 >> 16px
height * 0.01 >> 8px
*/

const Color mainBlack = Color(0xff121212);
const Color bgwhite = Colors.white;
const Color greyLv1 = Color(0xfff8f8f9); //lighter
const Color greyLv2 = Color(0xffefefef); //light
const Color greyLv3 = Color.fromRGBO(189, 189, 189, 1); //darkish

const bigTitleTextStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

const smallBlackTextStyle =
    TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal);

const textBoxTitleTextStyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: greyLv3);

const smallGreyTextStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w200, color: greyLv3);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: greyLv1,
  hintText: 'hint text',
  suffixIcon: null,
  hintStyle: TextStyle(color: greyLv3, fontSize: 14),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: greyLv2, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainBlack, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
