import 'package:flutter/material.dart';

class avartar extends StatelessWidget {
  const avartar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.account_box_sharp,
        size: MediaQuery.of(context).size.width / 4,
      ),
    );
  }
}
