import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/dangky/nhappassword/2_nhappassword.dart';

import '../components/khungnhapthongtin.dart';
import 'components/nhapthongtinbatdau.dart';
import '../components/nutnhapdangnhap.dart';

class nhapusername extends StatelessWidget {
  const nhapusername({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return nen_game(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image(
              image: logo_game,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Tên của bạn là gì',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                khungnhapthongtin(
                  text: 'Tên của bạn',
                ),
                const SizedBox(height: kDefaultPadding),
                nut_an_dangnhap(
                  press: MaterialPageRoute(
                    builder: (context) => const nhappassword(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
