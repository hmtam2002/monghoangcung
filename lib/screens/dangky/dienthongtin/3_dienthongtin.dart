import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'components/o_nhap_thong_tin.dart';

class DienThongTin extends StatelessWidget {
  const DienThongTin({super.key});

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
