import 'package:flutter/material.dart';

import '../trangcanhan.dart';

class NutTroVeV2 extends StatefulWidget {
  const NutTroVeV2({super.key});

  @override
  State<NutTroVeV2> createState() => _NutTroVeV2State();
}

class _NutTroVeV2State extends State<NutTroVeV2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TrangCaNhan(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.brown[300],
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
