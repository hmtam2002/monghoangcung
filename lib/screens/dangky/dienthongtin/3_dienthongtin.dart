import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/dangky/4_thanhcong.dart';

class dienthongtin extends StatelessWidget {
  const dienthongtin({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Nhập thông tin',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            o_nhap_thong_tin(hintext: 'Nhập thông tin'),
            o_nhap_thong_tin(hintext: 'Email'),
            o_nhap_thong_tin(hintext: 'Ngày sinh'),
            o_nhap_thong_tin(hintext: 'Số điện thoại'),
            o_nhap_thong_tin(hintext: 'Đăng ký'),
          ],
        ),
      ),
    );
  }
}

class o_nhap_thong_tin extends StatelessWidget {
  const o_nhap_thong_tin({
    Key? key,
    required this.hintext,
  }) : super(key: key);
  final String hintext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          // borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 3,
            color: Colors.grey,
          ),
        ),
        border: const OutlineInputBorder(),
        hintText: hintext,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
