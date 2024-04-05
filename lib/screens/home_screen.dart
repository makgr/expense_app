import 'package:expense_app/screens/widgets/account_manage.dart';
import 'package:expense_app/screens/widgets/credit_card.dart';
import 'package:expense_app/screens/widgets/current_account.dart';
import 'package:expense_app/screens/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/200')),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.blue,
                )),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //current account
          CurrentAccount(),

          //cards
          CreditCard(),
          SizedBox(
            height: 20,
          ),

          //account manage
          Align(
            alignment: Alignment.center,
            child: AccountManage(),
          ),
          SizedBox(
            height: 20,
          ),
          //transactions
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text('See All'),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Expanded(child: TransactionsList()),
        ],
      ),
    );
  }
}
