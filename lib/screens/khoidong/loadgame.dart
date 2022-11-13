import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';

class loadgame extends StatelessWidget {
  const loadgame({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage('assets/Logo.png'),
            // width: MediaQuery.of(context).size.width * 9 / 10,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
