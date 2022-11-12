import 'package:flutter/material.dart';

class goi_y extends StatelessWidget {
  const goi_y({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('-2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('-2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('-2'),
        ),
      ],
    );
  }
}
