import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarGradient extends StatelessWidget implements PreferredSizeWidget {
  final NotificationController notificationController = Get.find();
  final String title;
  final String title2;
  final List<Widget> listWidget;
  final Icon leftIcon;
  final Function leftIconPressed;

  @override
  final Size preferredSize;

  AppbarGradient({
    @required this.title,
    @required this.leftIcon,
    this.leftIconPressed,
    this.listWidget,
    this.title2,
  }) : preferredSize = Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Appcolor.headerBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: leftIcon,
                  onPressed: leftIconPressed,
                  color: Colors.white,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "'",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  title2,
                  style: TextStyle(
                      color: Appcolor.alltext,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Row(
              children: [
                listWidget == null
                    ? SizedBox.shrink()
                    : Container(
                        child: Row(
                          children: listWidget.map((x) {
                            return Padding(
                              padding: EdgeInsets.all(0),
                              child: IconButton(
                                onPressed: () {},
                                icon: x,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
