import 'package:flutter/material.dart';

const kwidth = SizedBox(
  width: 10,
);
const kwidth07 = SizedBox(
  width: 07,
);

const kwidth50 = SizedBox(
  width: 50,
);
const kwhite = Colors.white;
final buttoncolorblue = Colors.blueAccent[700];
const buttoncolorWhite = Colors.white;
const kblackcolor = Colors.black;
const baseColor = Colors.brown;

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
const kheight80 = SizedBox(
  height: 80,
);

const kheight130 = SizedBox(
  height: 130,
);

//BorderRadius

BorderRadius kradius = BorderRadius.circular(10);
BorderRadius kradius30 = BorderRadius.circular(30);

//textstyles

TextStyle ktextstyleformenu =
    const TextStyle(color: kblackcolor, fontSize: 17, fontWeight: FontWeight.bold);
TextStyle textstyle1 = const TextStyle(
    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);

TextStyle ktextstyle3 = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  overflow: TextOverflow.fade,
);

TextStyle ktextstyle4 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.fade,
    color: kblackcolor);

TextStyle ktextstyle5 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.fade,
    color: kblackcolor);

TextStyle ktextstyle6 = const TextStyle(
    fontSize: 15,
    // fontWeight: FontWeight.bold,
    overflow: TextOverflow.fade,
    color: kblackcolor);

TextStyle ktextStyleForAppBar = const TextStyle(
    color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900);

TextStyle ktextStyleforstatus1 = const TextStyle(
    color: Colors.red, fontWeight: FontWeight.w900, fontSize: 15);
TextStyle ktextStyleforstatus2 = const TextStyle(
    color: Colors.green, fontWeight: FontWeight.w900, fontSize: 15);

TextStyle ktextStyleforstatus3 = const TextStyle(
    color: Colors.blue, fontWeight: FontWeight.w900, fontSize: 15);

//buttonStyle

const submitbuttonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(baseColor),
    elevation: MaterialStatePropertyAll(8),
    shadowColor: MaterialStatePropertyAll(Colors.white));

//button

const Widget kBackBtn = Icon(
  Icons.arrow_back_ios,
  
);
