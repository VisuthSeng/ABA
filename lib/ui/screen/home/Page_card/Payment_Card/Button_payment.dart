import 'package:flutter/material.dart';

class ButtonPayment extends StatelessWidget {
  final String title;
  final String image;

  const ButtonPayment({Key key, this.title, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 70,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: Colors.white,
        onPressed: () {},
        child: Row(
          children: [
            Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image(
                image: AssetImage(image),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
