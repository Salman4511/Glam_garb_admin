import 'package:flutter/material.dart';

const kwidth = SizedBox(
  width: 10,
);
const kwidth07 = SizedBox(
  width: 07,
);
const kwhite = Colors.white;
final buttoncolorblue = Colors.blueAccent[700];
const buttoncolorWhite = Colors.white;
const kblackcolor = Colors.black;
const kheight = SizedBox(
  height: 10,
);
const kheight20 = SizedBox(
  height: 20,
);
const kheight50 = SizedBox(
  height: 50,
);
const kheight60 = SizedBox(
  height: 60,
);
const kheight90 = SizedBox(
  height: 90,
);

//BorderRadius

BorderRadius kradius = BorderRadius.circular(10);
BorderRadius kradius30 = BorderRadius.circular(30);

//textstyles

TextStyle ktextstyleformenu =
    TextStyle(color: kwhite, fontSize: 17, fontWeight: FontWeight.bold);

//buttonStyle

const submitbuttonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.amber),
    elevation: MaterialStatePropertyAll(8),
    shadowColor: MaterialStatePropertyAll(Colors.white));

//button

const Widget kBackBtn = Icon(
  Icons.arrow_back_ios,
  color: Colors.white,
);
