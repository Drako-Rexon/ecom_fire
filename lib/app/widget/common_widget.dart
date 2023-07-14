import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/constants/images.dart';
import 'package:flutter/material.dart';

Container appLogoContainer() {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: const BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Image.asset(
      icAppLogo,
      height: 77,
      width: 77,
    ),
  );
}

SizedBox sBox(double height, double width) {
  return SizedBox(height: height, width: width);
}

TextStyle normalText({
  double size = 12,
  Color color = whiteColor,
  FontWeight weight = FontWeight.normal,
}) {
  return TextStyle(
    fontWeight: weight,
    color: color,
    fontSize: size,
  );
}
