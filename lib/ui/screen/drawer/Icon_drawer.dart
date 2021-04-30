import 'package:aba/common/appcolor.dart';
import 'package:flutter/material.dart';

class IconDrawer extends StatelessWidget {
  final String icontext;
  final IconData icon;
  const IconDrawer({
    Key key,
    @required this.icontext,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Appcolor.allicon,
      ),
      onTap: () {},
      title: Text(
        icontext,
        style: TextStyle(color: Appcolor.alltext),
      ),
    );
  }
}
