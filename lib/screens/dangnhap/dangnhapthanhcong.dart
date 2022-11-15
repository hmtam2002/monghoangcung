import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';

import '../trangchu/trangchu.dart';

class dangnhapthanhcong extends StatelessWidget {
  const dangnhapthanhcong({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const trangchu()));
          },
          child: Image(
            image: AssetImage('assets/logo/Logo2.png'),
          ),
        ),
      ),
    );
  }
}
