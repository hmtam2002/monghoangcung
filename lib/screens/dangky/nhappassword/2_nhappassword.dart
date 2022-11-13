import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/dangky/3_dienthongtin.dart';
import 'package:monghoangcung/screens/dangky/components/khungnhapthongtin.dart';
import 'package:monghoangcung/screens/dangky/components/nutnhapdangnhap.dart';

// ignore: camel_case_types
class nhappassword extends StatelessWidget {
  const nhappassword({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Image(
              image: AssetImage('assets/Logo.png'),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Tạo một mật khẩu mới',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: kDefaultPadding),
                khungnhapthongtin(text: 'Mật khẩu của bạn'),
                SizedBox(height: kDefaultPadding),
                nut_an_dangnhap(
                    press: MaterialPageRoute(
                  builder: (context) => const dienthongtin(),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
