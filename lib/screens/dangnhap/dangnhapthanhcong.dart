import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';

class dangnhapthanhcong extends StatelessWidget {
  const dangnhapthanhcong({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage('assets/logo/Logo2.png'),
          ),
        ],
      ),
    );
  }
}
