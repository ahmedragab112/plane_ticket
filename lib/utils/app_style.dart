import 'package:flutter/material.dart';

const Color primary = Color(0xFF687daf);

class Style {
  static Color primaryColor = primary;

  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = const Color(0xffeeedf2);
  static Color orangeColor = const Color(0xff526799);
  static TextStyle textStyle = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle1 =
      TextStyle(color: textColor, fontSize: 27, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(
    color: textColor,
    fontSize: 21,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = TextStyle(
    color: textColor,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle4 = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static Color ticketColor = const Color(0xfff37b76);
}
