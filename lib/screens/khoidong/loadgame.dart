import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/dangky/nhapusername/1_nhapusername.dart';

import '../trangcanhan/trangcanhan.dart';

// ignore: camel_case_types
class loadgame extends StatelessWidget {
  const loadgame({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const nhapusername()));
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
