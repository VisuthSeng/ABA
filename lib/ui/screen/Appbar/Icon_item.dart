import 'package:aba/common/appcolor.dart';
import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const IconItem({
    Key key,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(icon, color: Appcolor.allicon),
      ),
    );
  }
}
