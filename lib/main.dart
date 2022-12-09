import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monghoangcung/screens/level/cau2.dart';

import 'package:monghoangcung/screens/level/level1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Lv1_cau2(
        id: 1,
        point: 0,
      ),
    );
  }
}
