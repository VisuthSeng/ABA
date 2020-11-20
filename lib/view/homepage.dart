import 'package:flutter/material.dart';
import 'package:aba/widget/columnaba.dart';
import 'package:aba/widget/drawer.dart';

class HomeABA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerABA(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("ABA Mobile"),
        actions: [
          IconButton(
              icon: Icon(Icons.phone_callback_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.phonelink_ring), onPressed: () {}),
        ],
      ),
      body: ColumnABA(
        column1: "BLUE",
        column2: "PINK",
        column3: "GREEM",
        column4: "BLUE",
        column5: "PINK",
        column6: "GREEN",
        column7: "BLUE",
        column8: "PINK",
        column9: "GREEN",
      ),
    );
  }
}
