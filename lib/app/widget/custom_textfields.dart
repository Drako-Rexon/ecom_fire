import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/widget/common_widget.dart';
import 'package:ecom_fire/app/widget/tex_style.dart';
import 'package:flutter/material.dart';

Widget customTextField({
  String? title,
  String? hint,
  controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title ?? "Loading...",
        style: modifiedText(
          color: redColor,
          size: 16,
          weight: FontWeight.w600,
        ),
      ),
      TextFormField(
        cursorColor: redColor,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: modifiedText(
            color: textFieldGrey,
            weight: FontWeight.w500,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: redColor),
          ),
        ),
      ),
      sBox(5, 0),
    ],
  );
}
