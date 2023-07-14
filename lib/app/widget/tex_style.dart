import 'package:ecom_fire/app/constants/colors.dart';
import 'package:flutter/material.dart';

TextStyle modifiedText(
    {Color color = whiteColor,
    double size = 12.0,
    FontWeight weight = FontWeight.normal}) {
  return TextStyle(color: color, fontSize: size, fontWeight: weight);
}
