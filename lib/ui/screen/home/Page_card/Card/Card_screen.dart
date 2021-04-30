import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/app_bar.dart';
import 'package:aba/ui/screen/home/Page_card/Card/Tabbar_view_card/Master_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Tabbar_view_card/Khmer_card.dart';
import 'Tabbar_view_card/Visa_cards.dart';

class CardScreen extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: notificationController.scaffoldState,
        appBar: CustomAppBar(
          title: 'A B A',
          title2: " Cards",
          leftIcon: Icon(Icons.arrow_back_ios),
          leftIconPressed: () => Get.back(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1,
                child: TabBar(
                  controller: notificationController.tabController,
                  labelStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorWeight: 3,
                  tabs: [
                    Tab(
                      text: "",
                    ),
                    Tab(
                      text: "",
                    ),
                    Tab(
                      text: "",
                    ),
                  ],
                ),
              ),
              Container(
                height: 800,
                width: double.infinity,
                color: Colors.white60,
                child: TabBarView(
                  controller: notificationController.tabController,
                  children: [
                    VisaCard(),
                    KhmerCard(),
                    MasterCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
