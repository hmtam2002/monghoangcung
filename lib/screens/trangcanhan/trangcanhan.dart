import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/caidat/caidat.dart';
import 'package:monghoangcung/screens/chinhsuathongtin/chinhsuathongtin.dart';
import 'package:monghoangcung/screens/naptien/naptien.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';
import 'package:monghoangcung/screens/trangdautien/trangdautien.dart';
import 'package:monghoangcung/screens/avatar/avatar.dart';
import 'package:monghoangcung/screens/xemxephang/xemxephang.dart';
import 'components/cacnuttrongtrangcanhan.dart';
import 'components/gioithieuthongtin.dart';

// ignore: camel_case_types
class trangcanhan extends StatefulWidget {
  const trangcanhan({super.key});

  @override
  State<trangcanhan> createState() => _trangcanhanState();
}

// ignore: camel_case_types
class _trangcanhanState extends State<trangcanhan> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const trangchu()));
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.brown.withOpacity(0.8),
                        size: 50,
                      ),
                    ),
                  ],
                ),
                const gioithieuthongtin(),
                cacnuttrongtrangcanhan(
                  noidung: 'Chỉnh sửa thông tin',
                  press:
                      MaterialPageRoute(builder: (context) => const EditInfo()),
                ),
                cacnuttrongtrangcanhan(
                  noidung: 'Thay đổi avatar',
                  press: MaterialPageRoute(
                      builder: (context) => const Editavatar()),
                ),
                cacnuttrongtrangcanhan(
                  noidung: 'Xem xếp hạng',
                  press: MaterialPageRoute(
                      builder: (context) => const xemxephang()),
                ),
                cacnuttrongtrangcanhan(
                  noidung: 'Nạp tiền',
                  press:
                      MaterialPageRoute(builder: (context) => const naptien()),
                ),
                cacnuttrongtrangcanhan(
                  noidung: 'Cài đặt',
                  press:
                      MaterialPageRoute(builder: (context) => const cai_dat()),
                ),
                cacnuttrongtrangcanhan(
                  noidung: 'Đăng xuất',
                  press: MaterialPageRoute(builder: (context) => firstscreen()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
