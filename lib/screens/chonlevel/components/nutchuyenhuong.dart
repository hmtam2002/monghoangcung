import 'package:flutter/material.dart';

import '../chonlevel2.dart';

class Nutchuyenhuong extends StatelessWidget {
  const Nutchuyenhuong({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 150,
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue.withOpacity(0.2)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            child: const Text(
              'Quay lại',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 150,
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Chooselv2()));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue.withOpacity(0.8)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            child: const Text(
              'Tiếp theo',
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
