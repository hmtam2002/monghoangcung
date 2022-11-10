import 'package:flutter/material.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/trangcanhan/trangcanhan.dart';

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
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const trangcanhan()));
                },
                child: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const trangcanhan()));
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
            ],
          ),
          Container(
            child: Image(
              image: AssetImage('assets/Logo.png'),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Chơi đơn',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.7)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Chơi đối kháng',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.5)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
