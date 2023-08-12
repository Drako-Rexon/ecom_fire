import 'package:ecom_fire/app/constants/colors.dart';
import 'package:ecom_fire/app/constants/images.dart';
import 'package:ecom_fire/app/constants/strings.dart';
import 'package:ecom_fire/app/controllers/homscreen_controller.dart';
import 'package:ecom_fire/app/screens/cart_screen/cart_screen.dart';
import 'package:ecom_fire/app/screens/category_screen/category_screen.dart';
import 'package:ecom_fire/app/screens/home_screen/home_screen.dart';
import 'package:ecom_fire/app/screens/profile_screen/profile_screen.dart';
import 'package:ecom_fire/app/widget/tex_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController());

    List<BottomNavigationBarItem> navBarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account),
    ];

    List navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          onTap: (newVal) {
            controller.currentIndex.value = newVal;
          },
          currentIndex: controller.currentIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: modifiedText(weight: FontWeight.w600),
          items: navBarItems,
          type: BottomNavigationBarType.fixed,
        );
      }),
      body: Column(
        children: [
          Obx(
            () {
              return Expanded(
                child: navBody.elementAt(controller.currentIndex.value),
              );
            },
          ),
        ],
      ),
    );
  }
}
