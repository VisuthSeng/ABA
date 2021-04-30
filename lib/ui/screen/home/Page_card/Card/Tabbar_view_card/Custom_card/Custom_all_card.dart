import 'package:aba/common/appcolor.dart';
import 'package:flutter/material.dart';

class CustomAllCard extends StatelessWidget {
  final String cardtitle;
  final String image;

  const CustomAllCard({Key key, this.cardtitle, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Text(
              cardtitle,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[800]),
            ),
          ),
          ExpansionTile(
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 33),
                  child: Text(
                    "002 206 023 | Saving Account with ATM facility",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Available balance :",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text("0.40 USD",
                        style: TextStyle(
                            fontSize: 15,
                            color: Appcolor.headerBackground,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daily Transaction Limit",
                      style: TextStyle(
                          color: Appcolor.headerBackground,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Purchase amount:                      USD 1.000 "),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Purchase number:                        5 times"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Purchase amount:                      USD 3.000 "),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Purchase number:                        5 times"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
