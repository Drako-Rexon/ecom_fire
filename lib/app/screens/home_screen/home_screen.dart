import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/constants/images.dart';
import 'package:ecom_fire/app/constants/strings.dart';
import 'package:ecom_fire/app/widget/common_widget.dart';
import 'package:ecom_fire/app/widget/home_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topTwoButtonIcon = [icTodaysDeal, icFlashDeal];
    final topTwoButtonText = [todayDeal, flashSale];
    final topThreeButtonIcon = [icCategories, icBrands, icTopSeller];
    final topThreeButtonText = [topCategories, brand, topSeller];
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: lightGrey,
      width: screenWidth,
      height: screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textFieldGrey),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // TODO: swipper brands
                    // ? brandSlider is used
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: screenWidth - 20,
                      height: 130,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Colors.red,
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(imgSlider1),
                        ),
                      ),
                    ),
                    sBox(15, 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        2,
                        (index) => homButton(
                          height: screenHeight * 0.15,
                          width: screenWidth / 2.5,
                          icon: topTwoButtonIcon[index],
                          text: topTwoButtonText[index],
                        ),
                      ),
                    ),

                    // TODO: swipper brands
                    // ? secondSliderList is used
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      width: screenWidth - 20,
                      height: 130,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Colors.red,
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(imgSlider1),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                        (index) => homButton(
                          height: screenHeight * 0.12,
                          width: screenWidth / 3.5,
                          icon: topThreeButtonIcon[index],
                          text: topThreeButtonText[index],
                        ),
                      ),
                    ),

                    // featured categories
                    sBox(10, 0),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          featuredCategories,
                          style: TextStyle(
                            color: darkFontGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
