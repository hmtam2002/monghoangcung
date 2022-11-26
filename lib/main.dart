import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/dangky/4_thanhcong.dart';
import 'package:monghoangcung/screens/trangcanhan/trangcanhan.dart';

//khởi tạo cho firebase chạy 1 lần
// Future<void> main(List<String> agrs) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

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
      home: const trangcanhan(),
    );
  }
}
