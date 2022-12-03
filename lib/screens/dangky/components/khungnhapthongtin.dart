import 'package:flutter/material.dart';

import '../nhapusername/components/nhapthongtinbatdau.dart';

class khungnhapthongtin extends StatefulWidget {
  khungnhapthongtin({
    Key? key,
    required this.text,
    this.icon = Icons.person,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  State<khungnhapthongtin> createState() => _khungnhapthongtinState();
}

class _khungnhapthongtinState extends State<khungnhapthongtin> {
  bool isHiden = true;

  Icon iconShow = const Icon(Icons.visibility_off);

  @override
  Widget build(BuildContext context) {
    return nhapthongtin_bandau(
      child: TextField(
        obscureText: isHiden,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.password),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isHiden = !isHiden;
              });

              if (isHiden) {
                setState(() {
                  iconShow = const Icon(Icons.visibility_off);
                });
              } else {
                setState(() {
                  iconShow = const Icon(Icons.visibility);
                });
              }
            },
            child: iconShow,
          ),
        ),
      ),
    );
  }
}
