import 'package:flutter/material.dart';

import '../../level/level1.dart';

class row123 extends StatelessWidget {
  const row123({
    Key? key,
  }) : super(key: key);

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const level_1()));
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
            onPressed: () {},
            child: const Text(
              '2',
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
            onPressed: () {},
            child: const Text(
              '3',
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
      ],
    );
  }
}
