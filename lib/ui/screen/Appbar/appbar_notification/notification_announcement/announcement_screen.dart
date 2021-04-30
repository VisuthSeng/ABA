import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/appbar_notification/notification_announcement/announcement_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnnouncementScreen extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: ListView.builder(
          itemCount: notificationController.listAnnouncementItemModel.length,
          itemBuilder: (BuildContext context, int index) {
            return AnnouncementItem(
              annoucementModel:
                  notificationController.listAnnouncementItemModel[index],
            );
          },
        ),
      ),
    );
  }
}
