import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:monghoangcung/screens/phongcho/phongcho.dart';
import '../../components/nen_game.dart';
import '../trangchu/components/cacnut.dart';

class SreachPlayer extends StatelessWidget {
  const SreachPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = const <String>[
      'assets/1.jpg',
      'assets/2.jpg',
      'assets/3.jpg',
      'assets/4.jpg',
      'assets/5.jpg',
      'assets/6.jpg',
      'assets/7.jpg',
      'assets/8.jpg',
      'assets/9.jpg',
      'assets/10.jpg'
    ];
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
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
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 3 - 20,
                      height: MediaQuery.of(context).size.width / 3 - 20,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/1.jpg'),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
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
                                padding: const EdgeInsets.all(10),
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
              CacNut(
                text: 'Hủy',
                press: MaterialPageRoute(
                  builder: (context) => const PhongCho(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
