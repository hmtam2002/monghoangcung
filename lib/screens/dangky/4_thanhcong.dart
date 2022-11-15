import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangcanhan/trangcanhan.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';

class dangkythanhcong extends StatelessWidget {
  const dangkythanhcong({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const trangchu()));
          },
          child: Image(
            image: AssetImage('assets/logo/Logo1.png'),
          ),
        ),
      ),
    );
  }
}
