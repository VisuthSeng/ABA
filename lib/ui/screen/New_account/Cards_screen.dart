import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/New_account_controller.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/app_bar.dart';
import 'package:aba/ui/screen/New_account/Custom_Account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewAccountScreen extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  final NewAccountController newAccountController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: CustomAppBar(
        title: 'A B A',
        title2: "Accounts Opening",
        leftIcon: Icon(Icons.arrow_back_ios),
        leftIconPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    color: Appcolor.headerBackground,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Center(
                                child: Icon(
                              Icons.notes_rounded,
                              size: 50,
                              color: Appcolor.allicon,
                            )),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue[700]),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "New Account",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Appcolor.alltext),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1000,
              width: double.infinity,
              color: Colors.grey[400],
              child: CustomAccountScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
