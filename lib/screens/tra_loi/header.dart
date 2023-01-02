import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TrangChu(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.brown[300],
              size: 40,
            ),
          ),
        ),
        // TextButton(
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => const TrangChu()));
        //   },
        //   child: Icon(
        //     Icons.settings,
        //     color: Colors.brown.withOpacity(0.8),
        //     size: 50,
        //   ),
        // ),
      ],
    );
  }
}
