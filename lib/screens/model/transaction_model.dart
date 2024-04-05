import 'package:flutter/material.dart';

class TransactionModel {
  String? title;
  String? subtitle;
  IconData? iconData;
  double? amount;
  TransactionModel(
      {required this.title,
      required this.subtitle,
      required this.iconData,
      required this.amount});
}
