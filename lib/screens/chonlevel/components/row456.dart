import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class row456 extends StatefulWidget {
  const row456({
    Key? key,
  }) : super(key: key);

  @override
  State<row456> createState() => _row456State();
}

class _row456State extends State<row456> {
  Color color1 = Colors.white.withOpacity(0.4);

  Color color2 = Colors.white.withOpacity(0.4);

  Color color3 = Colors.white.withOpacity(0.4);

  final bool i1 = false;

  bool i2 = false;
  bool i3 = false;
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
            onPressed: i1 ? () {} : null,
            child: const Text(
              '4',
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
            onPressed: i2 ? () {} : null,
            child: const Text(
              '5',
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
        Container(
          height: 70,
          width: 70,
          margin: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i3 ? () {} : null,
            child: const Text(
              '6',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color3),
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
