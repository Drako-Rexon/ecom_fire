import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/constants/lists.dart';
import 'package:ecom_fire/app/constants/strings.dart';
import 'package:ecom_fire/app/screens/auth_screens/sign_up.dart';
import 'package:ecom_fire/app/widget/appconfig.dart';
import 'package:ecom_fire/app/widget/background_widget.dart';
import 'package:ecom_fire/app/widget/common_widget.dart';
import 'package:ecom_fire/app/widget/custom_textfields.dart';
import 'package:ecom_fire/app/widget/out_button.dart';
import 'package:ecom_fire/app/widget/tex_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              sBox(AppConfig.screenHeight * 0.1, 0),
              appLogoContainer(),
              sBox(10, 0),
              Text('Log in to $appName',
                  style: modifiedText(weight: FontWeight.bold, size: 18)),
              sBox(15, 0),
              Container(
                width: AppConfig.screenWidth - 60,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 8,
                      color: Colors.black26,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: whiteColor,
                ),
                child: Column(
                  children: [
                    customTextField(title: email, hint: emailHint),
                    customTextField(title: password, hint: passwordHint),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(forgetPassword),
                      ),
                    ),
                    ourButton(
                      title: login,
                      color: redColor,
                      textColor: whiteColor,
                      onPress: () {},
                    ),
                    sBox(5, 0),
                    Text(
                      createNewAccount,
                      style: modifiedText(color: fontGrey),
                    ),
                    sBox(5, 0),
                    ourButton(
                      title: signup,
                      textColor: redColor,
                      color: lightGolden,
                      onPress: () {
                        Get.to(() => const SigUpScreen());
                      },
                    ),
                    sBox(10, 0),
                    Text(loginWith, style: modifiedText(color: fontGrey)),
                    sBox(5, 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        socialIconList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: lightGrey,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
