import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/appbar_notification/notification_announcement/announcement_screen.dart';

import 'package:aba/ui/screen/Appbar/appbar_notification/notification_transaction/transaction_screen.dart';
import 'package:flutter/material.dart';

class MyTabBarView extends StatelessWidget {
  const MyTabBarView({
    Key key,
    @required this.notificationController,
  }) : super(key: key);

  final NotificationController notificationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Appcolor.headerBackground,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TabBar(
              controller: notificationController.tabController,
              labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              unselectedLabelColor: Colors.white30,
              labelColor: Colors.white,
              indicatorColor: Colors.red,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  text: 'TRANSACTIONS',
                ),
                Tab(
                  text: 'ANNOUNCEMENTS',
                ),
              ],
            ),
            Container(
              height: 800,
              width: double.infinity,
              color: Colors.white60,
              child: TabBarView(
                  controller: notificationController.tabController,
                  children: [
                    TransactionScreen(),
                    AnnouncementScreen(),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
