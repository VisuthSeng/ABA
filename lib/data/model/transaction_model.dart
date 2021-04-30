import 'package:flutter/cupertino.dart';

class TransactionModel {
  final String image;
  final String title;
  final String dateTime;
  final String description;
  final Color color;

  TransactionModel(
      {this.image, this.title, this.dateTime, this.description, this.color});
}
