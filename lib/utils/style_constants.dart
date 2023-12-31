import 'package:flutter/material.dart';
// import 'package:trandz/Utils/color_resources.dart';
// import 'package:trandz/Utils/light_color.dart';

import 'color_resources.dart';
import 'light_color.dart';

const TextStyle lightGreyText = TextStyle(fontSize: 10, color: Colors.grey);

const TextStyle smallBlckText =
    TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal);

const TextStyle smallTealText = TextStyle(
    fontSize: 12, color: LightColor.darkTeal, fontWeight: FontWeight.normal);

const TextStyle lightGreyTextLarge =
    TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w600);

TextStyle darkGreyTextLarge = TextStyle(
    fontSize: 16, color: Colors.grey.shade700, fontWeight: FontWeight.w500);

const TextStyle boldblackTextSmall =
    TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black);

const TextStyle boldblackTextVerySmall =
    TextStyle(fontSize: 8, fontWeight: FontWeight.w600, color: Colors.black);

const TextStyle priceText =
    TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black);

const TextStyle heading1Bold =
    TextStyle(fontWeight: FontWeight.w500, fontSize: 25, color: Colors.black);

const TextStyle heading2Bold =
    TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black);

const TextStyle buttonTextStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black);

TextStyle buttonTextGrey = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey.shade400);

const TextStyle heading1Normal =
    TextStyle(fontWeight: FontWeight.w300, fontSize: 24, color: Colors.black);
const TextStyle headingName =
    TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: Colors.black);

const TextStyle subHeadingBold =
    TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black);
const TextStyle subHeadingBoldID =
    TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black);

const TextStyle subHeadingPrimaryColor = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: ColorResources.PRIMARY_MATERIAL);

const TextStyle redAccentText = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w600, color: Colors.redAccent);

const TextStyle subHeadingBoldWhite =
    TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white);
const TextStyle HeadingBoldWhite =
    TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white);
const TextStyle BoldWhite =
    TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.white);

const TextStyle smallHeadingBold =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: Colors.black);

const TextStyle crossedPrice = TextStyle(
    fontSize: 12, color: Colors.grey, decoration: TextDecoration.lineThrough);

const TextStyle offPercentage =
    TextStyle(fontSize: 14, color: Colors.green, fontWeight: FontWeight.w500);

TextStyle profileLabelText = const TextStyle(
    fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF645E70));

const TextStyle otpTextInputStye =
    TextStyle(fontWeight: FontWeight.w500, letterSpacing: 5, fontSize: 18);

BoxDecoration welcomeCardDecoration = BoxDecoration(
    gradient: const LinearGradient(colors: [
      Color.fromRGBO(255, 229, 235, 1),
      Color.fromRGBO(255, 234, 218, 1)
    ]),
    borderRadius: BorderRadius.circular(10));
