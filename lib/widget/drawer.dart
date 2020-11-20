import 'package:flutter/material.dart';

class DrawerABA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Image(
                        width: 100,
                        height: 100,
                        image: AssetImage(
                          'assets/suth.jpg',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Visuth Seng",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.location_city),
                onTap: () {},
                title: Text('ABA PAY Places'),
              ),
              ListTile(
                leading: Icon(Icons.money),
                onTap: () {},
                title: Text('Exchange Rates'),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                onTap: () {},
                title: Text('Contact US'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                onTap: () {},
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                onTap: () {},
                title: Text('Log out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
