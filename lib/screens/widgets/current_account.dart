import 'package:flutter/material.dart';

class CurrentAccount extends StatelessWidget {
  const CurrentAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, left: 12),
      height: 80,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Current Account",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Text(
            "\$5,429",
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
