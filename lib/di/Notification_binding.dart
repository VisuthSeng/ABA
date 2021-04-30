import 'package:aba/ui/controller/New_account_controller.dart';
import 'package:aba/ui/controller/addschedule_controller.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/controller/schedule_controller.dart';

import 'package:get/get.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NotificationController>(
      NotificationController(),
    );
    Get.put<AddScheduleController>(
      AddScheduleController(),
    );
    Get.put<ScheduleController>(
      ScheduleController(),
    );
    Get.put<NewAccountController>(
      NewAccountController(),
    );
  }
}
