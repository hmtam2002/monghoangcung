import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/dangky/3_dienthongtin.dart';
import 'package:monghoangcung/screens/dangky/components/khungnhapthongtin.dart';

// ignore: camel_case_types
class nhappassword extends StatelessWidget {
  const nhappassword({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/Logo.png'),
            fit: BoxFit.cover,
          ),
          const Text('Tạo một mật khẩu mới'),
          khungnhapthongtin(text: 'Mật khẩu của bạn'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const dienthongtin()));
            },
            child: const Text('Tiếp theo'),
          ),
        ],
      ),
    );
  }
}
