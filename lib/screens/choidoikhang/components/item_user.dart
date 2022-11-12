import 'package:flutter/material.dart';

class item_user extends StatelessWidget {
  const item_user({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('Score'), Icon(Icons.account_circle), Text('Level')],
    );
  }
}
