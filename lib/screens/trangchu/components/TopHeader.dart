// ignore: file_names
import 'package:flutter/material.dart';
import '../../trangcanhan/trangcanhan.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const trangcanhan()));
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/1.jpg'),
            )),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const trangcanhan()));
          },
          child: Icon(
            Icons.menu_rounded,
            color: Colors.brown.withOpacity(0.8),
            size: 50,
          ),
        ),
      ],
    );
  }
}
