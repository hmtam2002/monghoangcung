import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangcanhan/components/nutrove2.dart';
import '../trangcanhan/trangcanhan.dart';

class NapTien extends StatelessWidget {
  const NapTien({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: const [
          NutTroVeV2(),
          Text(
            'Nạp tiền',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
