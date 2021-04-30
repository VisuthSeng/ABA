import 'package:aba/common/appcolor.dart';
import 'package:aba/data/model/New_account_model.dart';
import 'package:flutter/material.dart';

class CustomAccountCard extends StatelessWidget {
  final NewAccountModel newAccountModel;
  const CustomAccountCard({
    Key key,
    this.newAccountModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 450,
            height: 220,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: Colors.white,
              onPressed: () {},
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(newAccountModel.image),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        newAccountModel.title,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 70, right: 10, bottom: 30),
                        child: Text(
                          newAccountModel.description,
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "EXPLORE MORE",
                            style: TextStyle(
                                fontSize: 16, color: Appcolor.headerBackground),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Appcolor.headerBackground,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
