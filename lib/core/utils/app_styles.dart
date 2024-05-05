import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle regular15(context) {
    return TextStyle(
      fontFamily: 'MxRegular',
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, 15),
    );
  }

  static TextStyle regular16(context) {
    return TextStyle(
      fontFamily: 'RaceSport',
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, 17),
    );
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
      fontFamily: 'RaceSport',
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, 20),
      fontWeight: FontWeight.bold,
    );
  }
}

double getResponsiveFontSize(context, double fontSize) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 800) {
    return width / 550;
  } else if (width < 1281) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
