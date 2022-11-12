import 'package:flutter/material.dart';

import '../choidoikhang.dart';
import 'item_user.dart';

class row_title extends StatelessWidget {
  const row_title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        item_user(),
        Column(
          children: [Text('level'), Text('6')],
        ),
        item_user(),
      ],
    );
  }
}
