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
        children: [
          const NutTroVeV2(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: const Text(
              'Nạp tiền',
              style: TextStyle(
                fontSize: 20,
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
