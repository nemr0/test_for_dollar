import 'package:flutter/material.dart';

import 'constants.dart';

/// App Theme
ThemeData theme() => ThemeData(
      primarySwatch: primaryMaterialColor,
      fontFamily: robotoFamilyName,
      textTheme: const TextTheme(
        // body text large text for upload screen
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
        // body text for upload screen
        bodyMedium: TextStyle(
          color: bodyTextColor,
          fontSize: 16,
          fontFamily: interFamilyName,
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: interFamilyName,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith(
            (states) => const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => primaryColor),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
    );
