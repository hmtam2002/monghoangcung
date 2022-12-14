import 'package:flutter/material.dart';
import 'package:monghoangcung/constants.dart';

// ignore: camel_case_types
class nen_game extends StatelessWidget {
  const nen_game({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
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
    ));
  }
}
