import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/choidoikhang/choidoikhang.dart';
import 'package:monghoangcung/screens/dangky/components/nutnhapdangnhap.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

class phongcho extends StatelessWidget {
  const phongcho({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TopHeader(),
          Text('Phòng chờ'),
          nut_an_dangnhap(
              press: MaterialPageRoute(
            builder: (context) => const choidoikhang(),
          ))
        ],
      ),
    );
  }
}
