import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

class cai_dat extends StatelessWidget {
  const cai_dat({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: [
          TopHeader(),
          Text(
            'Cài đặt',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
