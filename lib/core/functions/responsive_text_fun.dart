import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/size_config.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1950;
  }
}
