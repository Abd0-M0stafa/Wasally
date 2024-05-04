import 'package:flutter/material.dart';

abstract class AppStyels {
  static TextStyle regular15(context) {
    return TextStyle(
      fontFamily: 'MxRegular',
      fontSize: getResponsiveFontSize(context, 15),
    );
  }

  static TextStyle regular16(context) {
    return TextStyle(
      fontFamily: 'RaceSport',
      fontSize: getResponsiveFontSize(context, 15),
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
