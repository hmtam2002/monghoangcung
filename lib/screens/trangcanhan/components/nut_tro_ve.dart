import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        ),
      ],
    );
  }
}
