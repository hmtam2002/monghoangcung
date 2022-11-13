import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

class trogiup extends StatelessWidget {
  const trogiup({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: [
          TopHeader(),
          Text(
            'trợ giúp',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
