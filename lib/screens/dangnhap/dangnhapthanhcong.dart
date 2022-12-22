import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import '../trangchu/trangchu.dart';

class DangNhapThanhCong extends StatelessWidget {
  const DangNhapThanhCong({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TrangChu()));
          },
          child: const Image(
            image: AssetImage('assets/logo/Logo2.png'),
          ),
        ),
      ),
    );
  }
}
