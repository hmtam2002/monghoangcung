import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';

// ignore: camel_case_types
class nuttrove extends StatelessWidget {
  const nuttrove({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const trangchu()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.brown.withOpacity(0.8),
            size: 50,
          ),
        ),
      ],
    );
  }
}
