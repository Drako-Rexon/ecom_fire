import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/widget/tex_style.dart';
import 'package:flutter/material.dart';

Widget ourButton({
  onPress,
  Color color = redColor,
  Color textColor = Colors.white,
  String? title,
}) {
  return ElevatedButton(
    onPressed: onPress,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    child: Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title ?? "Loading...",
            style: modifiedText(
              weight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    ),
  );
}
