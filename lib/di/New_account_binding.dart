import 'package:aba/ui/controller/New_account_controller.dart';
import 'package:aba/ui/controller/notification_controller.dart';

import 'package:get/get.dart';

class NewAccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NotificationController>(
      NotificationController(),
    );
    Get.put<NewAccountController>(
      NewAccountController(),
    );
  }
}
