import 'package:flutter/material.dart';

class thanhcong extends StatelessWidget {
  const thanhcong({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/a.png'),
        fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage('assets/logo/Logo1.png'),
          ),
        ],
      ),
    );
  }
}
