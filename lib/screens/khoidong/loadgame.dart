import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';

class LoadGame extends StatelessWidget {
  const LoadGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const nen_game(
      child: Center(
        child: Image(
          image: AssetImage('assets/Logo.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
