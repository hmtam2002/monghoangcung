import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';

import '../../constants.dart';
import 'components/goi_y.dart';
import 'components/noidungcauhoi.dart';
import 'components/row_title.dart';

// ignore: camel_case_types
class choidoikhang extends StatelessWidget {
  const choidoikhang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: nen_game_image, fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            TopHeader(),
            const Text('Đối kháng'),
            const row_title(),
            const noidungcauhoi(),
            const goi_y(),
            const SizedBox(height: kDefaultPadding),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('a'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('a'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('a'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('a'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
