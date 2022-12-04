import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:monghoangcung/main.dart';

import 'package:monghoangcung/screens/phongcho/phongcho.dart';

import '../../components/nen_game.dart';
import '../../constants.dart';
import '../trangchu/components/cacnut.dart';
import '../trangchu/trangchu.dart';
import 'choidoikhang.dart';

class Sreached extends StatelessWidget {
  const Sreached({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text(
        'Đấu đối kháng',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: kDefaultPadding * 3,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  height: MediaQuery.of(context).size.width / 3 - 20,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/1.jpg'),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 2 - 20,
                child: Image(image: AssetImage('assets/vs1.png')),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  height: MediaQuery.of(context).size.width / 3 - 20,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/1.jpg'),
                  )),
            ],
          ),
        ],
      )
    ]));
  }
}
