import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../trangchu/trangchu.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const TrangChu()));
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.brown.withOpacity(0.8),
            size: 50,
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
