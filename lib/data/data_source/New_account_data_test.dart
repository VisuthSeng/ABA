import 'package:aba/data/model/New_account_model.dart';

class NewAccountDataTest {
  const NewAccountDataTest();
  static Future<List<NewAccountModel>> listnewaccountitem() async {
    var list = <NewAccountModel>[];
    list = [
      NewAccountModel(
          image: "assets/star.png",
          title: "Premium Account Number",
          description:
              "Create a new ABA account with your favorite number that easy to remember. it can contain a date of birth, vehicle plate or any other special number important for you."),
      NewAccountModel(
          image: "assets/cash-in-logo.png",
          title: "MobileFixed Deposit",
          description:
              "Choose the term deposit and get high return on your saving with our attractive interest rates in both USD and KHR currencies."),
      NewAccountModel(
          image: "assets/safe-deposit.png",
          title: "Mobile Savings Account",
          description:
              "our most popular bank account that helps you reach saving goals with competitive interest rate and other great features."),
      NewAccountModel(
          image: "assets/star.png",
          title: "Mobile Savings Account",
          description:
              "our most popular bank account that helps you reach saving goals with competitive interest rate and other great features."),
      NewAccountModel(
          image: "assets/cash-in-logo.png",
          title: "Mobile Savings Account",
          description:
              "our most popular bank account that helps you reach saving goals with competitive interest rate and other great features."),
      NewAccountModel(
          image: "assets/safe-deposit.png",
          title: "Mobile Savings Account",
          description:
              "our most popular bank account that helps you reach saving goals with competitive interest rate and other great features."),
      NewAccountModel(
          image: "assets/star.png",
          title: "Mobile Savings Account",
          description:
              "our most popular bank account that helps you reach saving goals with competitive interest rate and other great features."),
      NewAccountModel(
          image: "assets/safe-deposit.png",
          title: "Mobile Savings Account",
          description:
              "our most popular bank account that helps you reach saving goals with competitive interest rate and other great features."),
      NewAccountModel(
          image: "assets/star.png",
          title: "Mobile Savings Account",
          description:
              "our most popular bank account that helps you reach saving goals with competitive interest rate and other great features."),
    ];
    return list;
  }
}
