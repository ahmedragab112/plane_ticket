import 'package:flutter/material.dart';

class SizeOfScreen {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getHeight(double pixle, BuildContext context) {
    double screenHight = SizeOfScreen.screenHeight(context);
    double x = screenHight / pixle;
    return screenHight / x;
  }

  static double getWidth(double pixle, BuildContext context) {
    double screenWidth = SizeOfScreen.screenWidth(context); //100
    double x = screenWidth / pixle; //50 =100 ? 10 =50 ? 100=2
    return screenWidth / x; //500/50=10 /
  }
}
