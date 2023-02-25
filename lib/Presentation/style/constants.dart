import 'package:flutter/material.dart';

/// Primary Swatch Color Red
const int pRed = 255;

/// Primary Swatch Color Green
const int pGreen = 69;

/// Primary Swatch Color Blue
const int pBlue = 114;

/// Primary Swatch Color
const Color primaryColor = Color.fromRGBO(pRed, pGreen, pBlue, 1);

/// Material Color Map for Primary Swatch Color
const Map<int, Color> primarySwatchMap = {
  50: Color.fromRGBO(pRed, pGreen, pBlue, .1),
  100: Color.fromRGBO(pRed, pGreen, pBlue, .2),
  200: Color.fromRGBO(pRed, pGreen, pBlue, .3),
  300: Color.fromRGBO(pRed, pGreen, pBlue, .4),
  400: Color.fromRGBO(pRed, pGreen, pBlue, .5),
  500: Color.fromRGBO(pRed, pGreen, pBlue, .6),
  600: Color.fromRGBO(pRed, pGreen, pBlue, .7),
  700: Color.fromRGBO(pRed, pGreen, pBlue, .8),
  800: Color.fromRGBO(pRed, pGreen, pBlue, .9),
  900: Color.fromRGBO(pRed, pGreen, pBlue, 1),
};

/// Primary Swatch Material Color
MaterialColor primaryMaterialColor =
    MaterialColor(primaryColor.value, primarySwatchMap);

/// Green Color
const greenColor = Color(0xff00FF00);

/// Subsidiary Text Color
const bodyTextColor = Color.fromRGBO(18, 18, 18, .6);

/// Cancel Button Color
const cancelButtonColor = Color(0xffE95050);

/// Inter Font Family Name
const String interFamilyName = 'Inter';

/// Roboto Font Family Name
const String robotoFamilyName = 'Roboto';

/// Loading text style
const TextStyle loadingTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 22,
  fontWeight: FontWeight.bold,
  fontFamily: robotoFamilyName,
  decoration: TextDecoration.none,
);
