import 'package:flutter/material.dart';

import '../nhapusername/components/nhapthongtinbatdau.dart';

class khungnhapthongtin extends StatelessWidget {
  const khungnhapthongtin({
    Key? key,
    required this.text,
    this.icon = Icons.person,
  }) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return nhapthongtin_bandau(
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(icon),
          hintText: text,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
