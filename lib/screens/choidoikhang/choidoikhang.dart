import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

import '../../constants.dart';
import 'components/goi_y.dart';
import 'components/noidungcauhoi.dart';
import 'components/row_title.dart';

// ignore: camel_case_types
class choidoikhang extends StatelessWidget {
  const choidoikhang({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return nen_game(
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          TopHeader(),
          const Text('Đối kháng'),
          const row_title(),
          const noidungcauhoi(),
          const goi_y(),
          const SizedBox(height: kDefaultPadding),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              cautraloi_item(text: 'a'),
              cautraloi_item(text: 'b'),
              cautraloi_item(text: 'c'),
              cautraloi_item(text: 'd'),
              cautraloi_item(text: 'e'),
            ],
          )
        ],
      ),
    );
  }
}

class cautraloi_item extends StatelessWidget {
  const cautraloi_item({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
