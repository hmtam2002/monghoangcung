import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../chonlevel/chonlevel.dart';

// ignore: camel_case_types
class cacnut extends StatelessWidget {
  const cacnut({
    Key? key,
    required this.title,
    required this.tap,
  }) : super(key: key);
  final String title;
  final MaterialPageRoute tap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, tap);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white.withOpacity(0.65)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            )),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
