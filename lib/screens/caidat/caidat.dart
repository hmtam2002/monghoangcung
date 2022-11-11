import 'package:flutter/material.dart';

import '../trangchu/trangchu.dart';

class caidat extends StatefulWidget {
  const caidat({super.key});

  @override
  State<caidat> createState() => _caidatState();
}

class _caidatState extends State<caidat> {
  bool valuefirst = false;
  bool valuesecond = false;
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const trangchu()));
                },
                child: Icon(
                  Icons.home,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cài Đặt',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Opacity(
            opacity: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width * 9 / 10,
              height: MediaQuery.of(context).size.height / 4,
            ),
          ),
        ],
      ),
    );
  }
}
