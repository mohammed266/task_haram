


import 'package:flutter/material.dart';


const Color kPrimaryColor =  Color(0xFFFE7D55);
const Color kBlackColor = Color(0xFF181725);
const Color kDarkWhiteColor = Color(0xFFE5E5E5);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kLightGrayColor = Color(0xFFF2F3F2);
const Color kGrayColor = Color(0xFF7C7C7C);
const Color kDarkGrayColor = Color(0xFF4C4F4D);


String getAsset(String image) => 'assets/images/$image.png';


double getHeight(BuildContext context, double fraction, {bool subtractAppBar = true}) {
  final mediaQuery = MediaQuery.of(context);
  final appBarHeight = AppBar().preferredSize.height;
  final subtraction = subtractAppBar ? (mediaQuery.padding.top + appBarHeight) : 0;
  return (mediaQuery.size.height - subtraction) / fraction;
}

double getWidth(BuildContext context, double fraction) {
  final mediaQuery = MediaQuery.of(context);
  return (mediaQuery.size.width) / fraction;
}