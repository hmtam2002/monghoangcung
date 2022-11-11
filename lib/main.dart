import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/choidon/choidon.dart';
import 'package:monghoangcung/screens/chonlevel/chonlevel.dart';
import 'package:monghoangcung/screens/dangky/dienthongtin.dart';
import 'package:monghoangcung/screens/dangky/nhapusername.dart';
import 'package:monghoangcung/screens/level/level1.dart';

import 'package:monghoangcung/screens/trangchu/trangchu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: trangchu(),
    );
  }
}
