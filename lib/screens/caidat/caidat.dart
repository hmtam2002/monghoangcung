import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangcanhan/components/nutrove2.dart';

class CaiDat extends StatelessWidget {
  const CaiDat({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: [
          NutTroVeV2(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Cài đặt',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
