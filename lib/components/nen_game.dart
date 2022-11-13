import 'package:flutter/material.dart';
import 'package:monghoangcung/constants.dart';

class nen_game extends StatelessWidget {
  const nen_game({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image2,
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
