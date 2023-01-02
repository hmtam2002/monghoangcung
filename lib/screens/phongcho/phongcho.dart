import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/choidoikhang/timtran.dart';
import 'package:monghoangcung/screens/xemxephang/xemxephang.dart';
import '../../constants.dart';
import '../trangchu/components/cacnut.dart';
import '../trangchu/trangchu.dart';

class PhongCho extends StatefulWidget {
  const PhongCho({super.key});

  @override
  State<PhongCho> createState() => _PhongChoState();
}

class _PhongChoState extends State<PhongCho> {
  final TextEditingController txtIdPhong = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrangChu()));
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
            ],
          ),
          const Text(
            'Đấu đối kháng',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPadding * 10,
          ),
          TextField(
            controller: txtIdPhong,
            decoration: const InputDecoration(
              hintText: 'Id Phong',
            ),
          ),
          CacNut(
            text: 'Chơi ngay',
            press: MaterialPageRoute(
              builder: (context) => const SreachPlayer(),
            ),
          ),
        ],
      ),
    );
  }
}
