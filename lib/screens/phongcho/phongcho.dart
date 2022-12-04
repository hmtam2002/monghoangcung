import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/choidoikhang/choidoikhang.dart';
import 'package:monghoangcung/screens/choidoikhang/timtran.dart';
import 'package:monghoangcung/screens/dangky/components/nutnhapdangnhap.dart';
import 'package:monghoangcung/screens/xemxephang/xemxephang.dart';
import '../../constants.dart';
import '../trangchu/components/cacnut.dart';
import '../trangchu/trangchu.dart';

class phongcho extends StatelessWidget {
  const phongcho({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: IconButton(
                    icon: Icon(Icons.history),
                    onPressed: () => xemxephang(),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: IconButton(
                    icon: Icon(Icons.book_outlined),
                    onPressed: () => xemxephang(),
                  )),
            ],
          ),
          cacnut(
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
