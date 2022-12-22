import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';

class NutTroVe extends StatelessWidget {
  const NutTroVe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrangChu(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.brown[300],
            size: 40,
          ),
        ),
      ],
    );
  }
}
