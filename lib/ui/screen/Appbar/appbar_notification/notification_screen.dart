import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/app_bar.dart';
import 'package:aba/ui/screen/Appbar/appbar_notification/Tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  final NotificationController notificationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: notificationController.scaffoldState,
        appBar: CustomAppBar(
          title: 'A B A',
          title2: "Notifications",
          leftIcon: Icon(Icons.arrow_back_ios),
          leftIconPressed: () => Get.back(),
        ),
        backgroundColor: Appcolor.headerBackground,
        body: MyTabBarView(notificationController: notificationController),
      ),
    );
  }
}
