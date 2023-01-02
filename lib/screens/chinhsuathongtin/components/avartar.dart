import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.account_box_sharp,
      size: MediaQuery.of(context).size.width / 4,
    );
  }
}
