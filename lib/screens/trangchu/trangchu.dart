import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/choidoikhang/choidoikhang.dart';
import 'package:monghoangcung/screens/chonlevel/chonlevel.dart';

import '../trangcanhan/cacnut.dart';
import 'components/TopHeader.dart';

// ignore: camel_case_types
class trangchu extends StatefulWidget {
  const trangchu({super.key});

  @override
  State<trangchu> createState() => _trangchuState();
}

class _trangchuState extends State<trangchu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/a.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopHeader(),
            const Image(
              image: AssetImage('assets/Logo.png'),
            ),
            Column(
              children: [
                cacnut(
                  title: 'Chơi đơn',
                  tap: MaterialPageRoute(
                    builder: (context) => const Chooselv(),
                  ),
                ),
                // ignore: prefer_const_constructors
                cacnut(
                  title: 'Chơi đối kháng',
                  tap: MaterialPageRoute(
                    builder: (context) => const choidoikhang(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
