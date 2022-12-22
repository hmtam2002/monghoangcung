import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';

import '../timer/timecountdown2.dart';
import '../trangchu/trangchu.dart';
import 'cau2.dart';

class level_1 extends StatefulWidget {
  const level_1({super.key});

  @override
  State<level_1> createState() => _level_1State();
}

class _level_1State extends State<level_1> {
  bool button = true;

  Color button1color = Colors.white.withOpacity(0.8);
  Color button2color = Colors.white.withOpacity(0.8);
  Color button3color = Colors.white.withOpacity(0.8);
  Color button4color = Colors.white.withOpacity(0.8);
  int point = 0;

  @override
  Widget build(BuildContext context) {
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
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const trangchu()));
                },
                child: Icon(
                  Icons.settings,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
            ],
          ),
          const Text(
            'Câu 1 ',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Who are you ?',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(10),
                child: const countimedown2(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Điểm : $point",
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(
                    onPressed: button
                        ? () {
                            setState(() {
                              button = false;
                              button1color = Colors.red;
                              point += 0;
                            });
                          }
                        : null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(button1color),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    child: const Text(
                      'I am is Vy',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(
                    onPressed: button
                        ? () {
                            setState(() {
                              button = false;
                              button2color = Colors.green;
                              point += 100;
                            });
                          }
                        : null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(button2color),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    child: const Text(
                      'My name is Vy',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(
                    onPressed: button
                        ? () {
                            setState(() {
                              button = false;
                              button3color = Colors.red;
                              point += 0;
                            });
                          }
                        : null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(button3color),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    child: const Text(
                      'She is Vy',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(
                    onPressed: button
                        ? () {
                            setState(() {
                              button = false;
                              button4color = Colors.red;
                              point += 0;
                            });
                          }
                        : null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(button4color),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    child: const Text(
                      'I is Vy',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 150,
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Lv1_cau2(
                              soluongcau: 1,
                              id: 1,
                              point: point,
                            )));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue.withOpacity(0.8)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              child: const Text(
                'Tiếp theo',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
          )
        ],
      ),
    );
  }
}
