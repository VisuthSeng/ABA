import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/app_bar.dart';
import 'package:aba/ui/screen/Transfers/Transfer_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransferScreen extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.lightBlue[300],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Transfers",
                              style: TextStyle(
                                  fontSize: 20, color: Appcolor.alltext),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Transfer money to your friends, relative or",
                              style: TextStyle(
                                  fontSize: 14, color: Appcolor.alltext),
                            ),
                            Text(
                              "partners in couple of simple steps",
                              style: TextStyle(
                                  fontSize: 14, color: Appcolor.alltext),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 150,
                          width: 200,
                          child: Image(
                              image: AssetImage("assets/transfer.png"),
                              color: Colors.grey[500]),
                        ),
                        top: 20,
                        right: -65,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Transferitem(
                          image: "assets/schedule.png",
                          title: "Choose From Template",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/logo-visa.png",
                          title: "Mobile Top-up",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/sabay.jpg",
                          title: "Internet & TV",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/schedule.png",
                          title: "Ultilities",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/logo-visa.png",
                          title: "Financial Services",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/schedule.png",
                          title: "Education",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/sabay.jpg",
                          title: "Entertainment",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/transfer.png",
                          title: "Public Service",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/transfer.png",
                          title: "Public Service",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transferitem(
                          image: "assets/transfer.png",
                          title: "Public Service",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
