import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';

class DangKyThanhCong extends StatelessWidget {
  const DangKyThanhCong({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TrangChu()));
          },
          child: const Image(
            image: AssetImage('assets/logo/Logo1.png'),
          ),
        ),
      ),
    );
  }
}
