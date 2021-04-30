import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Loans/CustomLoans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoansScreen extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: notificationController.scaffoldState,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/abaloans.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 125,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.money,
                      size: 70,
                      color: Colors.black,
                    ),
                  ),
                  bottom: 0,
                  left: 200,
                  top: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            CustomLoans(),
            CustomLoans(),
            CustomLoans(),
            CustomLoans(),
            CustomLoans(),
            CustomLoans(),
            CustomLoans(),
            CustomLoans(),
            CustomLoans(),
            CustomLoans(),
          ],
        )),
      ),
    );
  }
}
