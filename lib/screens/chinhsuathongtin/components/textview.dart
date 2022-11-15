import 'package:flutter/material.dart';

class textview extends StatelessWidget {
  const textview({
    Key? key,
    required TextEditingController username,
    required this.text,
  })  : _username = username,
        super(key: key);
  final String text;
  final TextEditingController _username;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 9 / 10,
      padding: EdgeInsets.all(20),
      child: TextField(
        controller: _username,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white54,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: text,
        ),
      ),
    );
  }
}
