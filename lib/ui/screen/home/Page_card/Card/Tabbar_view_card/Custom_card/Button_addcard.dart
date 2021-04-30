import 'package:flutter/material.dart';

class ButtonAddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.redAccent,
        ),
        child: Icon(
          Icons.calendar_view_day_sharp,
          size: 40,
          color: Colors.white70,
        ),
      ),
    );
  }
}
