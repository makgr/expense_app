import 'package:flutter/material.dart';

class AccountManage extends StatelessWidget {
  const AccountManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * .90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Card(
        elevation: 6,
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              'VISA',
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text(
            'Current Account',
            style: TextStyle(fontSize: 12),
          ),
          subtitle: Text('**** 3325'),
          trailing: ElevatedButton(
            onPressed: () {},
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Text('Manage'),
              SizedBox.square(dimension: 4),
              Icon(Icons.arrow_forward),
            ]),
          ),
        ),
      ),
    );
  }
}
