import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:monghoangcung/screens/phongcho/phongcho.dart';

import '../../components/nen_game.dart';
import '../../constants.dart';
import '../trangchu/components/cacnut.dart';
import '../trangchu/trangchu.dart';
import 'choidoikhang.dart';

class SreachPlayer extends StatelessWidget {
  const SreachPlayer({super.key});

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
            'Tìm đối thủ',
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
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 3 - 20,
                      height: MediaQuery.of(context).size.width / 3 - 20,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/1.jpg'),
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    child: Lottie.network(
                        "https://assets2.lottiefiles.com/packages/lf20_xvqam5qh.json"),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 3 - 20,
                      height: MediaQuery.of(context).size.width / 3 - 20,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/1.jpg'),
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
