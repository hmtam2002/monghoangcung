import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/choidoikhang/timtran.dart';
import 'package:monghoangcung/screens/xemxephang/xemxephang.dart';
import '../../constants.dart';
import '../trangchu/components/cacnut.dart';
import '../trangchu/trangchu.dart';

class PhongCho extends StatelessWidget {
  const PhongCho({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: IconButton(
                    icon: const Icon(Icons.history),
                    onPressed: () => const Xemxephang(),
                  )),
              Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: IconButton(
                    icon: const Icon(Icons.book_outlined),
                    onPressed: () => const Xemxephang(),
                  )),
            ],
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
