import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

class dangnhapthanhcong extends StatelessWidget {
  const dangnhapthanhcong({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          TopHeader(),
          Image(
            image: AssetImage('assets/logo/Logo2.png'),
          ),
        ],
      ),
    );
  }
}
