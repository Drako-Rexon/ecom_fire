import 'package:ecom_fire/app/constants/images.dart';
import 'package:flutter/material.dart';

Widget backGroundWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
