import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/widget/common_widget.dart';
import 'package:flutter/material.dart';

Widget homButton({
  required double height,
  required double width,
  required String icon,
  required String text,
}) {
  return Container(
    height: height,
    width: width,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      color: whiteColor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 26,
        ),
        sBox(5, 0),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: darkFontGrey,
          ),
        )
      ],
    ),
  );
}
