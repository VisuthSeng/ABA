import 'package:aba/data/data_source/Addschedulepayment_data_test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddScheduleController extends GetxController {
  var listaddNewSchedule = [].obs;
  String value = " ";

  var selectAcoountController = TextEditingController();
  var selectTemplateController = TextEditingController();
  var amountController = TextEditingController();
  var scheduleOptionController = TextEditingController();
  var listCardIteams = [].obs;

  @override
  void onInit() {
    loadCard();

    super.onInit();
  }

  loadCard() async {
    listCardIteams.clear();
    var list = await CardDataTest.listpaymentitem();
    listCardIteams.assignAll(list);
  }
}
