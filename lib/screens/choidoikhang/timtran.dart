import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monghoangcung/screens/chinhsuathongtin/components/avartar.dart';
import 'package:monghoangcung/screens/phongcho/phongcho.dart';

import '../../components/nen_game.dart';
import '../../constants.dart';
import '../trangchu/components/cacnut.dart';
import '../trangchu/trangchu.dart';
import 'choidoikhang.dart';

class SreachPlayer extends StatefulWidget {
  const SreachPlayer({super.key});

  @override
  State<SreachPlayer> createState() => _SreachPlayerState();
}

class _SreachPlayerState extends State<SreachPlayer> {
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
                          builder: (context) => const trangchu()));
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
            ],
          ),
          Text(
            'Đấu đối kháng',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPadding * 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/1.jpg'),
                      )),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/2.jpg'),
                      ))
                ],
              ),
              cacnut(
                text: 'Hủy',
                press: MaterialPageRoute(
                  builder: (context) => const phongcho(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
