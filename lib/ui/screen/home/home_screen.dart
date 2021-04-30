import 'package:aba/common/appcolor.dart';
import 'package:aba/common/route_name.dart';
import 'package:aba/ui/controller/home_controller.dart';
import 'package:aba/ui/screen/Appbar/app_bar_homescreen.dart';
import 'package:aba/ui/screen/Appbar/Icon_item.dart';
import 'package:aba/ui/screen/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_body.dart';

class HomeABA extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeController.scaffoldState,
      appBar: AppbarHomeScreen(
        title: "A B A",
        title2: "Mobile",
        listIcon: [
          IconItem(
            icon: Icons.notifications_active,
            onPressed: () => Get.toNamed(RouteName.appbar_notification),
          ),
          IconItem(
            icon: Icons.call,
            onPressed: () => Get.toNamed(RouteName.appbar_hotline),
          ),
        ],
      ),
      backgroundColor: Appcolor.headerBackground,
      drawer: DrawerABA(),
      body: ColumnABA(),
    );
  }
}
