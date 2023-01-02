import 'package:flutter/material.dart';
import 'package:monghoangcung/constants.dart';

// ignore: camel_case_types
class nen_game2 extends StatelessWidget {
  const nen_game2({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: nen_game_image,
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
