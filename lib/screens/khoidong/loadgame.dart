import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/nhanthu/nhanthu.dart';

class LoadGame extends StatelessWidget {
  const LoadGame({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NhanThu()));
          },
          child: const Image(
            image: AssetImage('assets/Logo.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
