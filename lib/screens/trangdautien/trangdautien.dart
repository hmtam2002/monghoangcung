import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/dangnhap/nhapmatkhau.dart';
import '../dangky/components/dangky.dart';
import '../trangchu/components/cacnut.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return nen_game(
        child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage('assets/Logo.png')),
              ],
            )),
        Expanded(
          child: Column(
            children: [
              CacNut(
                text: 'Đăng nhập',
                press: MaterialPageRoute(
                  builder: (context) => const SignInScreen(),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 3 / 2),
              CacNut(
                text: 'Đăng ký',
                press: MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
