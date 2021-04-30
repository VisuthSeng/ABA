import 'package:aba/common/appcolor.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Function onpressed;
  final String text;
  final IconData icon;
  const CustomCard({
    Key key,
    @required this.onpressed,
    @required this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          height: 130,
          color: Appcolor.backgroundIcon,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Appcolor.allicon,
                size: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(color: Appcolor.alltext),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
