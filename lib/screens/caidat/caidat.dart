import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangcanhan/components/nutrove2.dart';

class CaiDat extends StatelessWidget {
  const CaiDat({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: const [
          NutTroVeV2(),
          Text(
            'Cài đặt',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
