import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/chonlevel/row123.dart';
import 'package:monghoangcung/screens/chonlevel/row456.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';
import 'components/nutchuyenhuong.dart';

class Chooselv extends StatefulWidget {
  const Chooselv({super.key});

  @override
  State<Chooselv> createState() => _ChooselvState();
}

class _ChooselvState extends State<Chooselv> {
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrangChu()));
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.brown[300],
                  size: 40,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: const Text(
              'Màn chơi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Row123(),
          const Row456(),
          const SizedBox(
            height: 60,
          ),
          const Nutchuyenhuong(),
        ],
      ),
    );
  }
}
