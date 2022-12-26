import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/top_header.dart';

class NapTien extends StatelessWidget {
  const NapTien({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: const [
          TopHeader(),
          Text(
            'Nạp tiền',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
