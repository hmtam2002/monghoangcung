import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

import '../../constants.dart';

class choidoikhang extends StatelessWidget {
  const choidoikhang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: image2, fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            TopHeader(),
          ],
        ),
      ),
    );
  }
}
