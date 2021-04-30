import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/app_bar.dart';
import 'package:aba/ui/screen/home/Page_card/Payment_Card/Button_payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payments extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: notificationController.scaffoldState,
      appBar: CustomAppBar(
        title: 'A B A',
        title2: " Payments",
        leftIcon: Icon(Icons.arrow_back_ios),
        leftIconPressed: () => Get.back(),
        icon: Icons.search,
      ),
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment",
                          style:
                              TextStyle(fontSize: 20, color: Appcolor.alltext),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Top up your phone, pay your bills or your",
                          style:
                              TextStyle(fontSize: 14, color: Appcolor.alltext),
                        ),
                        Text(
                          "children's school fee free of charge at any",
                          style:
                              TextStyle(fontSize: 14, color: Appcolor.alltext),
                        ),
                        Text(
                          "time",
                          style:
                              TextStyle(fontSize: 14, color: Appcolor.alltext),
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
                          color: Colors.white70),
                    ),
                    top: 20,
                    right: -65,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              ButtonPayment(
                image: "assets/schedule.png",
                title: "Choose From Template",
              ),
              SizedBox(
                height: 5,
              ),
              ButtonPayment(
                image: "assets/logo-visa.png",
                title: "Mobile Top-up",
              ),
              SizedBox(
                height: 5,
              ),
              ButtonPayment(
                image: "assets/sabay.jpg",
                title: "Internet & V",
              ),
              SizedBox(
                height: 5,
              ),
              ButtonPayment(
                image: "assets/schedule.png",
                title: "Ultilities",
              ),
              SizedBox(
                height: 5,
              ),
              ButtonPayment(
                image: "assets/logo-visa.png",
                title: "Financial Services",
              ),
              SizedBox(
                height: 5,
              ),
              ButtonPayment(
                image: "assets/schedule.png",
                title: "Education",
              ),
              SizedBox(
                height: 5,
              ),
              ButtonPayment(
                image: "assets/sabay.jpg",
                title: "Entertainment",
              ),
              SizedBox(
                height: 5,
              ),
              ButtonPayment(
                image: "assets/transfer.png",
                title: "Public Service",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
