import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';

import '../trangchu/trangchu.dart';

class Lv1_cau2 extends StatefulWidget {
  int id;
  int point;
  Lv1_cau2({Key? key, required this.id, required this.point}) : super(key: key);

  @override
  State<Lv1_cau2> createState() => _Lv1_cau2State();
}

class _Lv1_cau2State extends State<Lv1_cau2> {
  bool button = true;
  Color button1color = Colors.white.withOpacity(0.8);
  Color button2color = Colors.white.withOpacity(0.8);
  Color button3color = Colors.white.withOpacity(0.8);
  Color button4color = Colors.white.withOpacity(0.8);

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Điểm : " + widget.point.toString(),
                style: TextStyle(fontSize: 30),
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

                              widget.point = widget.point + 100;
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
                              widget.point = widget.point + 100;
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
                              widget.point = widget.point + 100;
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
                              widget.point = widget.point + 100;
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
                              id: 1,
                              point: widget.point,
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
