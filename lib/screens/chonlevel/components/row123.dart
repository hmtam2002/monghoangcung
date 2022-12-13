import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/level/cau2.dart';

import '../../level/level1.dart';

class row123 extends StatefulWidget {
  row123({
    Key? key,
  }) : super(key: key);

  @override
  State<row123> createState() => _row123State();
}

class _row123State extends State<row123> {
  Color color1 = Colors.white.withOpacity(0.4);

  Color color2 = Colors.white.withOpacity(0.4);

  bool i1 = false;

  bool i2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          margin: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Lv1_cau2(
                            id: 1,
                            point: 0,
                            soluongcau: 1,
                          )));
            },
            child: const Text(
              '1',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white.withOpacity(0.8)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          margin: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i1
                ? () {
                    setState(() {
                      color1 = Colors.white.withOpacity(0.8);
                    });
                  }
                : null,
            child: const Text(
              '2',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color1),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          margin: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i2
                ? () {
                    setState(() {
                      color1 = Colors.white.withOpacity(0.8);
                    });
                  }
                : null,
            child: const Text(
              '3',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color2),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
          ),
        ),
      ],
    );
  }
}
