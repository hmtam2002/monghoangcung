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
    List<String> list = const <String>[
      '1.jpg',
      '2.jpg',
      '3.jpg',
      '4.jpg',
      '5.jpg',
      '6.jpg',
      '7.jpg',
      '8.jpg',
      '9.jpg',
      '10.jpg'
    ];
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
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
                    height: MediaQuery.of(context).size.width / 3 - 20,
                    child: Lottie.network(
                        "https://assets2.lottiefiles.com/packages/lf20_xvqam5qh.json"),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: MediaQuery.of(context).size.width / 2,
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true),
                    items: list.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                width:
                                    MediaQuery.of(context).size.width / 3 - 20,
                                height:
                                    MediaQuery.of(context).size.width / 3 - 20,
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(i)),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  )
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
