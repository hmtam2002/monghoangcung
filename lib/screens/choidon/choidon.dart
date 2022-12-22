import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';

import '../../object/question_obj.dart';

class ChoiDon extends StatefulWidget {
  const ChoiDon({super.key});

  @override
  State<ChoiDon> createState() => _ChoiDonState();
}

// ignore: camel_case_types
class _ChoiDonState extends State<ChoiDon> {
  String name = "";
  List<questionobject> lscontact = [];

  get userprovider => null;

  void _loaddanhsachcauhoi() async {
    final data = await userprovider.searchcauhoi(1);
    setState(() {
      lscontact = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _loaddanhsachcauhoi();
  }

  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 1,
                color: Colors.red,
              ),
            ),
            width: 500,
            height: 300,
            margin: const EdgeInsets.only(
              bottom: 40,
            ),
            child: const Text('Câu hỏi \n Ai đã đặt tên cho dòng sông'),
          ),
          Column(
            children: [
              Text(
                'data',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  backgroundColor: Colors.pink.withOpacity(0.8),
                ),
              ),
              const Text('data'),
              const Text('data'),
              const Text('data'),
            ],
          )
        ],
      ),
    );
  }
}
