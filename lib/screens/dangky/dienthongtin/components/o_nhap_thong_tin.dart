import 'package:flutter/material.dart';

// ignore: camel_case_types
class o_nhap_thong_tin extends StatelessWidget {
  const o_nhap_thong_tin({
    Key? key,
    required this.hintext,
  }) : super(key: key);
  final String hintext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          // borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 3,
            color: Colors.grey,
          ),
        ),
        border: const OutlineInputBorder(),
        hintText: hintext,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
