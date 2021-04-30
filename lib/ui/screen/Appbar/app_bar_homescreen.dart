import 'package:aba/common/appcolor.dart';

import 'package:aba/ui/controller/home_controller.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarHomeScreen extends StatelessWidget implements PreferredSizeWidget {
  final HomeController homeController = Get.find();
  final String title;
  final String title2;
  final List<Widget> listIcon;
  final IconData leftIcon;
  final Function leftIconOnPress;
  @override
  final Size preferredSize;

  AppbarHomeScreen({
    @required this.title,
    this.listIcon,
    this.leftIcon,
    this.leftIconOnPress,
    this.title2,
  }) : preferredSize = Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Appcolor.headerBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Appcolor.allicon,
                  onPressed: () {
                    homeController.scaffoldState.currentState.openDrawer();
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Appcolor.alltext,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "'",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  title2,
                  style: TextStyle(
                      color: Appcolor.alltext,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Row(
              children: listIcon.map((x) {
                return x;
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
