import 'package:flutter/material.dart';

class AppFonts {
  static const String openSans = 'Open Sans';
  static const String lato = 'Lato';
  static const String lucida= 'Lucida Calligraphy';

  // Splash
  static const TextStyle lucidaRegular30 = TextStyle(
    fontFamily: lucida,
    fontSize: 30.0,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const TextStyle openSansBold18 = TextStyle(
    fontFamily: openSans,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle latoItalic20 = TextStyle(
    fontFamily: lato,
    fontSize: 20.0,
    fontStyle: FontStyle.italic,
  );
}