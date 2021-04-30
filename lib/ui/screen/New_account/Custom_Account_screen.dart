import 'package:aba/ui/controller/New_account_controller.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/New_account/Custom_Account_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAccountScreen extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  final NewAccountController newAccountController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: ListView.builder(
          itemCount: newAccountController.listNewAccountitemModel.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomAccountCard(
              newAccountModel:
                  newAccountController.listNewAccountitemModel[index],
            );
          },
        ),
      ),
    );
  }
}
