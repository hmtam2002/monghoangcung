import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/choidoikhang/choidoikhang.dart';
import 'package:monghoangcung/screens/choidon/choidon.dart';
import 'package:monghoangcung/screens/chonlevel/chonlevel.dart';

import 'components/cacnut.dart';
import 'components/TopHeader.dart';

// ignore: camel_case_types
class trangchu extends StatefulWidget {
  const trangchu({super.key});

  @override
  State<trangchu> createState() => _trangchuState();
}

class _trangchuState extends State<trangchu> {
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopHeader(),
          const Expanded(
            flex: 1,
            child: Image(
              image: AssetImage('assets/Logo.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                cacnut(
                  text: 'Chơi đơn',
                  press: MaterialPageRoute(
                    builder: (context) => const Chooselv(),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                cacnut(
                  text: 'Chơi đối kháng',
                  press: MaterialPageRoute(
                    builder: (context) => const choidoikhang(),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
