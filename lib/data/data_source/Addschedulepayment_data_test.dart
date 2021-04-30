import 'package:aba/data/model/addschedulepayment_model.dart';

class CardDataTest {
  const CardDataTest();
  static Future<List<PaymentAddModel>> listpaymentitem() async {
    var list = <PaymentAddModel>[];
    list = [
      PaymentAddModel(
          balance: "2000 USD",
          payment: "1 USD",
          phonenumber: "010507568",
          title: "Saving Account with ATM facility",
          cardNumber: "002 206 023"),
      PaymentAddModel(
          balance: "2000 USD",
          payment: "1 USD",
          phonenumber: "010507568",
          title: "Sport",
          cardNumber: "002 206 023"),
      PaymentAddModel(
          balance: "2000 USD",
          payment: "1 USD",
          phonenumber: "010507568",
          title: "CellCard",
          cardNumber: "002 206 023"),
      PaymentAddModel(
          balance: "2000 USD",
          payment: "1 USD",
          phonenumber: "010507568",
          title: "Smart",
          cardNumber: "002 206 023"),
    ];
    return list;
  }
}
