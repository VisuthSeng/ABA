import 'package:aba/common/appcolor.dart';
import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarContactUs extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  final roundedrectangleborder = RoundedRectangleBorder(
    side: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );
  final roundedrectangleborderNOcolor = RoundedRectangleBorder(
    side: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: notificationController.scaffoldState,
      appBar: CustomAppBar(
        title: 'A B A',
        title2: "Contact Us",
        leftIcon: Icon(Icons.arrow_back_ios),
        leftIconPressed: () => Get.back(),
      ),
      backgroundColor: Appcolor.headerBackground,
      body: Container(
        width: double.infinity,
        color: Appcolor.headerBackground,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Appcolor.headerBackground,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Center(
                          child: Icon(
                        Icons.call,
                        size: 50,
                        color: Appcolor.allicon,
                      )),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue[400]),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "NEED HELP ?",
                      style: TextStyle(color: Appcolor.alltext, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Contact us 24/7 by selecting any channel you prefer below",
                      style: TextStyle(
                          color: Appcolor.alltext,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 225,
            ),
            Column(
              children: [
                Column(
                  children: [
                    RaisedButton(
                      shape: roundedrectangleborder,
                      color: Appcolor.headerBackground,
                      child: Container(
                        height: 50,
                        width: 350,
                        child: Center(
                            child: Text(
                          "LEAVE FEED BACK",
                          style: TextStyle(color: Appcolor.alltext),
                        )),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  shape: roundedrectangleborderNOcolor,
                  color: Colors.red,
                  child: Container(
                    height: 50,
                    width: 350,
                    child: Center(
                        child: Text(
                      "FACEBOOK MESSENGER",
                      style: TextStyle(color: Appcolor.alltext),
                    )),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  shape: roundedrectangleborderNOcolor,
                  color: Colors.red,
                  child: Container(
                    height: 50,
                    width: 350,
                    color: Colors.red,
                    child: Center(
                        child: Text(
                      "CALL HOTLINE",
                      style: TextStyle(color: Appcolor.alltext),
                    )),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
