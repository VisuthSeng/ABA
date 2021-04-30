import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final NotificationController notificationController = Get.find();
  final String title;
  final String title2;
  final List<Widget> listWidget;
  final Icon leftIcon;
  final Function leftIconPressed;
  final IconData icon;

  @override
  final Size preferredSize;

  CustomAppBar({
    @required this.title,
    @required this.leftIcon,
    this.leftIconPressed,
    this.listWidget,
    this.title2,
    List listIcon,
    this.icon,
  }) : preferredSize = Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
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
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
