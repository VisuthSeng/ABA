import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/screen/Appbar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddnewSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'A B A',
        title2: "Schedule Payment",
        leftIcon: Icon(Icons.arrow_back_ios),
        leftIconPressed: () => Get.back(),
      ),
      body: Container(
        height: 200,
        width: double.infinity,
        color: Appcolor.headerBackground,
      ),
    );
  }
}
