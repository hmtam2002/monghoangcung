import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

class nhan_thu extends StatelessWidget {
  const nhan_thu({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: [
          TopHeader(),
          Text(
            'Nhận thư',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
