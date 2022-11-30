import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/chonlevel/chonlevel2.dart';
import 'package:monghoangcung/screens/level/level1.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

import '../trangchu/trangchu.dart';
import 'components/nutchuyenhuong.dart';
import 'components/row123.dart';
import 'components/row456.dart';

class Chooselv extends StatefulWidget {
  const Chooselv({super.key});

  @override
  State<Chooselv> createState() => _ChooselvState();
}

class _ChooselvState extends State<Chooselv> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  Icons.home,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
            ],
          ),
          Text(
            'Chọn Level',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height / 4,
          ),
          row123(),
          row456(),
          nutchuyenhuong(),
        ],
      ),
    );
  }
}
