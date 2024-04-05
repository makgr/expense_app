import 'package:expense_app/screens/model/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  TransactionsList({super.key});

  List<TransactionModel> transaction = [
    TransactionModel(
        title: 'Spotify Premium',
        subtitle: 'Expense',
        iconData: Icons.cases_sharp,
        amount: 10.9),
    TransactionModel(
        title: 'Salary',
        subtitle: 'Income',
        iconData: Icons.money,
        amount: 5000.9),
    TransactionModel(
        title: 'Electricity',
        subtitle: 'Expense',
        iconData: Icons.cases_sharp,
        amount: 58.9),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transaction.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(transaction[index].iconData),
          title: Text(transaction[index].title!),
          subtitle: Text(transaction[index].subtitle!),
          trailing: Text('\$ ${transaction[index].amount}'),
        );
      },
    );
  }
}
