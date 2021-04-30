import 'package:flutter/material.dart';

class CustomCardSettingsButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomCardSettingsButton({Key key, this.icon, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(title),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 3,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}
