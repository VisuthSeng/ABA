import 'package:aba/ui/screen/home/Page_card/Card/Tabbar_view_card/Custom_card/Button_addcard.dart';
import 'package:aba/ui/screen/home/Page_card/Card/Tabbar_view_card/Custom_card/Custom_Card_Settings_button.dart';
import 'package:aba/ui/screen/home/Page_card/Card/Tabbar_view_card/Custom_card/Custom_all_card.dart';
import 'package:flutter/material.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAllCard(
            cardtitle: "VISA Debit Card",
            image: "assets/ABA_Visa_Credit.png",
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image(
                      image: AssetImage("assets/logo-visa.png"),
                      width: 55,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Transfer to VISA",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueAccent),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 30,
            width: double.infinity,
            color: Colors.grey[400],
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Card Settings",
                style: TextStyle(
                    color: Colors.grey[800], fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: CustomCardSettingsButton(
                      title: "Rename Card",
                      icon: Icons.edit,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: CustomCardSettingsButton(
                      title: "Change linked account",
                      icon: Icons.my_library_books_rounded,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: CustomCardSettingsButton(
                      title: "Change transactions limit",
                      icon: Icons.speed_sharp,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: CustomCardSettingsButton(
                      title: "Reset card pin",
                      icon: Icons.point_of_sale_sharp,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: CustomCardSettingsButton(
                      title: "Block card",
                      icon: Icons.lock,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.grey[600],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Close card"),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                  ),
                ],
              ),
              Positioned(
                child: ButtonAddCard(),
                bottom: 20,
                right: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
