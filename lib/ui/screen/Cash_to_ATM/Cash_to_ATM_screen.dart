import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class CashtoATMScreen extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: notificationController.scaffoldState,
      appBar: CustomAppBar(
        title: "A B A",
        title2: "Transfers",
        leftIcon: Icon(Icons.arrow_back_ios),
        leftIconPressed: () => Get.back(),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Appcolor.headerBackground,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green[700],
                  ),
                  child: Icon(
                    Icons.money_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Text(
                  "Cash to ATM",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Select E-Cash withdrawal option",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[600]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.greenAccent),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        Icons.qr_code,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Scan QR",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.greenAccent),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.greenAccent),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.qr_code_scanner_rounded,
                                size: 28,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "By Code",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
