import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangcanhan/components/nutrove2.dart';

class NhanThu extends StatelessWidget {
  const NhanThu({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: const [
          NutTroVeV2(),
          Text(
            'Nhận thư',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
