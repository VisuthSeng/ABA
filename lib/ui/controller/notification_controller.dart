import 'package:aba/data/data_source/transaction_data_test.dart';
import 'package:aba/data/model/notification_announcement_model.dart';
import 'package:aba/data/model/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  //CustomAppbar_Require
  GlobalKey<ScaffoldState> scaffoldState;
  //Tab
  TabController tabController;
  var listTransactionItemModel = <TransactionModel>[].obs;
  var listAnnouncementItemModel = <AnnouncementModel>[].obs;

  @override
  void onInit() {
    loadTransactionItemModel();
    loadAnncouncementItemModel();
    super.onInit();
  }

  loadTransactionItemModel() async {
    listTransactionItemModel.clear();
    var list = await DataTest.listitemTransaction();
    listTransactionItemModel.assignAll(list);
  }

  loadAnncouncementItemModel() async {
    listAnnouncementItemModel.clear();
    var list = await DataTest.listitemAnnouncement();
    listAnnouncementItemModel.assignAll(list);
  }
}
