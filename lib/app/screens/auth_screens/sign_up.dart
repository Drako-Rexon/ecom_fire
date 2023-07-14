import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/constants/strings.dart';
import 'package:ecom_fire/app/screens/auth_screens/login_screen.dart';
import 'package:ecom_fire/app/widget/appconfig.dart';
import 'package:ecom_fire/app/widget/background_widget.dart';
import 'package:ecom_fire/app/widget/common_widget.dart';
import 'package:ecom_fire/app/widget/custom_textfields.dart';
import 'package:ecom_fire/app/widget/out_button.dart';
import 'package:ecom_fire/app/widget/tex_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigUpScreen extends StatelessWidget {
  const SigUpScreen({super.key});

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
              Text('Sign up to $appName',
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
                    customTextField(title: name, hint: nameHint),
                    customTextField(title: email, hint: emailHint),
                    customTextField(title: password, hint: passwordHint),
                    customTextField(title: reTypePassword, hint: passwordHint),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(forgetPassword),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: redColor,
                          value: false,
                          onChanged: (val) {},
                        ),
                        sBox(10, 0),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "I agree to the ",
                                  style: modifiedText(
                                    weight: FontWeight.bold,
                                    color: fontGrey,
                                  ),
                                ),
                                TextSpan(
                                  text: termsAndCond,
                                  style: modifiedText(
                                    weight: FontWeight.bold,
                                    color: redColor,
                                  ),
                                ),
                                TextSpan(
                                  text: " & ",
                                  style: modifiedText(
                                    weight: FontWeight.bold,
                                    color: fontGrey,
                                  ),
                                ),
                                TextSpan(
                                  text: privacyPolicy,
                                  style: modifiedText(
                                    weight: FontWeight.bold,
                                    color: redColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ourButton(
                      title: signup,
                      color: redColor,
                      textColor: whiteColor,
                      onPress: () {},
                    ),
                    sBox(10, 0),
                    InkWell(
                      onTap: () {
                        Get.off(() => const LoginScreen());
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: alreadyAccount,
                              style: modifiedText(color: fontGrey),
                            ),
                            TextSpan(
                              text: login,
                              style: modifiedText(color: redColor),
                            ),
                          ],
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
