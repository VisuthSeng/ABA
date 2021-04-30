import 'package:aba/common/appcolor.dart';
import 'package:aba/common/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Custom_card/Custom_Card.dart';

class ColumnABA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: [
                CustomCard(
                    onpressed: () => Get.toNamed(RouteName.account_cards),
                    text: "Accounts",
                    icon: Icons.account_balance),
                Container(
                  width: 1,
                  child: SizedBox(
                    height: 130,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
                CustomCard(
                  onpressed: () => Get.toNamed(RouteName.card_cards),
                  icon: Icons.account_balance,
                  text: "Card",
                ),
                Container(
                  width: 1,
                  child: SizedBox(
                    height: 130,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
                CustomCard(
                    onpressed: () => Get.toNamed(RouteName.payment_cards),
                    text: "Payments",
                    icon: Icons.payment),
              ],
            ),
          ),
          Container(
            height: 1,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                CustomCard(
                  onpressed: () => Get.toNamed(RouteName.newaccount_card),
                  text: "New Account",
                  icon: Icons.card_giftcard,
                ),
                Container(
                  width: 1,
                  child: SizedBox(
                    height: 130,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
                CustomCard(
                  onpressed: () => Get.toNamed(RouteName.cashtoatm_card),
                  text: "Cash to ATM",
                  icon: Icons.payment,
                ),
                Container(
                  width: 1,
                  child: SizedBox(
                    height: 130,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
                CustomCard(
                  onpressed: () => Get.toNamed(RouteName.transfers_card),
                  text: "Transfers",
                  icon: Icons.account_balance,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Appcolor.backgroundIcon,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCard(
                            onpressed: () => Get.toNamed(RouteName.scanqr),
                            text: "SCAN QR",
                            icon: Icons.qr_code),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  child: SizedBox(
                    height: 130,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Appcolor.backgroundIcon,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCard(
                            onpressed: () => Get.toNamed(RouteName.loans_card),
                            text: "Loans",
                            icon: Icons.money_off),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  child: SizedBox(
                    height: 130,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Appcolor.backgroundIcon,
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCard(
                            onpressed: () {},
                            text: "Locator",
                            icon: Icons.local_activity),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      width: double.infinity,
                      color: Color(0xff54b8d0),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Quick Transfers',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Appcolor.alltext),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Create your template here to make transfer quicker',
                                style: TextStyle(
                                    color: Appcolor.alltext, fontSize: 12),
                              )
                            ],
                          ),
                          Positioned(
                            child: Container(
                              width: 135,
                              child: Image(
                                color: Colors.white30,
                                image: AssetImage('assets/transfer.png'),
                              ),
                            ),
                            right: -40,
                            top: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      width: double.infinity,
                      color: Color(0xffdd5e57),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Quick Payment',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Appcolor.alltext,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Paying your bills with templates is faster',
                                style: TextStyle(
                                    color: Appcolor.alltext, fontSize: 12),
                              )
                            ],
                          ),
                          Positioned(
                            child: Container(
                              width: 150,
                              child: Image(
                                color: Colors.white30,
                                image: AssetImage('assets/usd.png'),
                              ),
                            ),
                            right: -30,
                            top: 40,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
