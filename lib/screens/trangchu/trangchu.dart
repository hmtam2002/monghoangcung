import 'package:flutter/material.dart';

class trangchu extends StatefulWidget {
  const trangchu({super.key});

  @override
  State<trangchu> createState() => _trangchuState();
}

class _trangchuState extends State<trangchu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
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
              Icon(
                Icons.home_rounded,
                size: 50,
                color: Colors.brown.withOpacity(0.8),
              ),
              Image(image: AssetImage('assets/icon/icon.png'))
            ],
          ),
          Image(
            image: AssetImage('assets/Logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Chơi đơn'),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Chơi đối kháng'),
          ),
        ],
      ),
    );
    ;
  }
}
