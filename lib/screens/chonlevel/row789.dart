import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/tra_loi/tra_loi.dart';
import 'package:monghoangcung/object/account_obj.dart';

class Row789 extends StatefulWidget {
  Row789({Key? key, required this.lv}) : super(key: key);
  final int lv;

  @override
  State<Row789> createState() => _Row789State();
}

// ignore: camel_case_types
class _Row789State extends State<Row789> {
  Color color1 = Colors.white.withOpacity(0.4);
  Color color2 = Colors.white.withOpacity(0.4);
  Color color3 = Colors.white.withOpacity(0.4);
  bool i1 = false;
  bool i2 = false;
  bool i3 = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.lv >= 7) {
        i1 = true;
        color1 = Colors.white.withOpacity(0.8);
      }
      if (widget.lv >= 8) {
        i2 = true;
        color2 = Colors.white.withOpacity(0.8);
      }
      if (widget.lv >= 9) {
        i3 = true;
        color3 = Colors.white.withOpacity(0.8);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i1
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManHinhTraLoi(
                                  id: 61,
                                  point: 0,
                                  soluongcau: 1,
                                )));
                  }
                : null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color1),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            child: const Text(
              '7',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i2
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManHinhTraLoi(
                                  id: 71,
                                  point: 0,
                                  soluongcau: 1,
                                )));
                  }
                : null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color2),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            child: const Text(
              '8',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i3
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManHinhTraLoi(
                                  id: 81,
                                  point: 0,
                                  soluongcau: 1,
                                )));
                  }
                : null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color3),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            child: const Text(
              '9',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }
}
