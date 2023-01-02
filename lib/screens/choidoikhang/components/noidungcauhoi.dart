import 'package:flutter/material.dart';

import '../../../constants.dart';

class Noidungcauhoi extends StatelessWidget {
  const Noidungcauhoi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text('Câu hỏi:\nAi đã đặt tên cho dòng sông'),
    );
  }
}
