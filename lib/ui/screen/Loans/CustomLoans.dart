import 'package:flutter/material.dart';

class CustomLoans extends StatelessWidget {
  const CustomLoans({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 50,
                  top: 20,
                  left: 20,
                ),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.lightBlue[400]),
                  child:
                      Icon(Icons.attach_money, size: 25, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Borrow cash up to 90.00% of your Fixed Deposit",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[700]),
                    ),
                    Text(
                      "amount or maximum 50.000 USD or",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[700]),
                    ),
                    Text(
                      "200.000.000 KHR",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
