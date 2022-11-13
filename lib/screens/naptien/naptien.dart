import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

class naptien extends StatelessWidget {
  const naptien({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: [
          TopHeader(),
          Text('Nạp tiền'),
        ],
      ),
    );
  }
}
