import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/top_header.dart';

class NhanThu extends StatelessWidget {
  const NhanThu({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: const [
          TopHeader(),
          Text(
            'Nhận thư',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
