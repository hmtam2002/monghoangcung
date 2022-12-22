import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import '../../constants.dart';
import '../trangchu/trangchu.dart';
import 'components/goi_y.dart';
import 'components/noidungcauhoi.dart';
import 'components/row_title.dart';

// ignore: camel_case_types
class choidoikhang extends StatelessWidget {
  const choidoikhang({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return nen_game(
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrangChu()));
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
            ],
          ),
          const Text('Đối kháng'),
          const RowTitle(),
          const Noidungcauhoi(),
          const goi_y(),
          const SizedBox(height: kDefaultPadding),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CautraloiItem(text: 'a'),
              CautraloiItem(text: 'b'),
              CautraloiItem(text: 'c'),
              CautraloiItem(text: 'd'),
            ],
          )
        ],
      ),
    );
  }
}

class CautraloiItem extends StatelessWidget {
  const CautraloiItem({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
