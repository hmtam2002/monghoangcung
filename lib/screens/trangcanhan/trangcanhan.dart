import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/caidat/caidat.dart';
import 'package:monghoangcung/screens/chinhsuathongtin/chinhsuathongtin.dart';
import 'package:monghoangcung/screens/naptien/naptien.dart';
import 'package:monghoangcung/screens/nhanthu/nhanthu.dart';
import 'package:monghoangcung/screens/avatar/avatar.dart';
import 'package:monghoangcung/screens/xemxephang/xemxephang.dart';
import 'package:monghoangcung/screens/trangcanhan/components/cacnuttrongtrangcanhan.dart';
import 'package:monghoangcung/screens/trangcanhan/components/gioithieuthongtin.dart';
import 'package:monghoangcung/screens/trangcanhan/components/nut_tro_ve.dart';

class TrangCaNhan extends StatefulWidget {
  const TrangCaNhan({super.key});

  @override
  State<TrangCaNhan> createState() => _TrangCaNhanState();
}

// ignore: camel_case_types
class _TrangCaNhanState extends State<TrangCaNhan> {
  final user = FirebaseAuth.instance.authStateChanges();
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        //nội dung
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const NutTroVe(),
                const SizedBox(height: 20),
                const gioithieuthongtin(),
                Cacnuttrongtrangcanhan(
                  noidung: 'Đổi tên',
                  press:
                      MaterialPageRoute(builder: (context) => const EditInfo()),
                ),
                Cacnuttrongtrangcanhan(
                  noidung: 'Đổi avatar',
                  press: MaterialPageRoute(
                      builder: (context) => const Editavatar()),
                ),
                Cacnuttrongtrangcanhan(
                  noidung: 'Xếp hạng',
                  press: MaterialPageRoute(
                      builder: (context) => const Xemxephang()),
                ),
                Cacnuttrongtrangcanhan(
                  noidung: 'Hộp thư',
                  press:
                      MaterialPageRoute(builder: (context) => const NhanThu()),
                ),
                Cacnuttrongtrangcanhan(
                  noidung: 'Nạp tiền',
                  press:
                      MaterialPageRoute(builder: (context) => const NapTien()),
                ),
                Cacnuttrongtrangcanhan(
                  noidung: 'Cài đặt',
                  press:
                      MaterialPageRoute(builder: (context) => const CaiDat()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
