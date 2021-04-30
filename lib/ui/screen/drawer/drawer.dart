import 'package:aba/common/appcolor.dart';
import 'package:aba/common/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerABA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff042338),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: AssetImage('assets/suth.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(50.0)),
                      border: new Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Welcome',
                          style: TextStyle(color: Colors.cyan),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, bottom: 1.0),
                          child: Text(
                            'Visuth Seng'.toUpperCase(),
                            style: TextStyle(
                                color: Appcolor.alltext, fontSize: 15.0),
                          ),
                        ),
                        Text(
                          'Your ID: 999888',
                          style: TextStyle(
                              color: Appcolor.alltext, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Image.asset(
                'assets/usd.png',
                width: 26.0,
              ),
              title: Text(
                'Scheduled Payments',
                style: TextStyle(color: Appcolor.alltext),
              ),
              onTap: () => Get.toNamed(RouteName.schedule_payments),
            ),
            ListTile(
              leading: Image.asset(
                'assets/marker.png',
                width: 26.0,
              ),
              title: Text(
                'ABA PAY Places',
                style: TextStyle(color: Appcolor.alltext),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.money_off,
                size: 26,
                color: Appcolor.allicon,
              ),
              title: Text(
                'ABA PAY Places',
                style: TextStyle(color: Appcolor.alltext),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(
                'assets/phone.png',
                width: 26.0,
              ),
              title: Text(
                'Contact Us',
                style: TextStyle(color: Appcolor.alltext),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Appcolor.alltext),
              ),
              onTap: () {},
            ),
            Container(
              height: 200,
            ),
            Divider(
              height: 1.0,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 50.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('V 4.9.0',
                      style:
                          TextStyle(fontSize: 12.0, color: Appcolor.alltext)),
                  Text('Last Login: 19:44 | 10 Mar 21',
                      style: TextStyle(fontSize: 12.0, color: Colors.white54))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
