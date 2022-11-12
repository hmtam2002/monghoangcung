import 'package:flutter/material.dart';

import '../../../constants.dart';

class noidungcauhoi extends StatelessWidget {
  const noidungcauhoi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text('Câu hỏi:\nAi đã đặt tên cho dòng sông'),
    );
  }
}
