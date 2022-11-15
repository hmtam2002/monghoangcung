import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/dangky/4_thanhcong.dart';
import 'package:monghoangcung/screens/dangnhap/dangnhapthanhcong.dart';
import 'package:monghoangcung/screens/khoidong/loadgame.dart';
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
      home: const dangkythanhcong(),
    );
  }
}
