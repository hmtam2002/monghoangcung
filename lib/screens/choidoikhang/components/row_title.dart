import 'package:flutter/material.dart';
import 'item_user.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const item_user(),
        Column(
          children: const [Text('level'), Text('6')],
        ),
        const item_user(),
      ],
    );
  }
}
