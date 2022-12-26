import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

class Xemxephang extends StatelessWidget {
  const Xemxephang({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: const [
          TopHeader(),
          Text(
            'xem xếp hạng',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
