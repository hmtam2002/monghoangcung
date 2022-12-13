import 'package:flutter/material.dart';

import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/dangnhap/nhapmatkhau.dart';

import '../dangky/components/khungnhapthongtin.dart';
import '../trangchu/components/cacnut.dart';

class firstscreen extends StatefulWidget {
  firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return nen_game(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        cacnut(
          text: 'Đăng nhập',
          press: MaterialPageRoute(
            builder: (context) => SignInScreen(),
          ),
        ),
        cacnut(
          text: 'Đăng ký',
          press: MaterialPageRoute(
            builder: (context) => CreateInfo(),
          ),
        ),
      ],
    ));
  }
}
