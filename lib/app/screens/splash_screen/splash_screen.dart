import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/constants/images.dart';
import 'package:ecom_fire/app/screens/auth_screens/login_screen.dart';
import 'package:ecom_fire/app/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate() {
    Future.delayed(
      const Duration(milliseconds: 1500),
      () => Get.offAll(() => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(icSplashBg, width: 300),
            sBox(20, 0),
            appLogoContainer(),
            sBox(10, 0),
            Text('ECom', style: normalText(size: 22)),
            sBox(5, 0),
            Text('version 1.0.0', style: normalText()),
            const Spacer(),
            Text('@Drako Devs', style: normalText(weight: FontWeight.bold)),
            sBox(20, 0),
          ],
        ),
      ),
    );
  }
}
