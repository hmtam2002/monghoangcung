import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';

import '../../components/loaddatajson/question_obj.dart';

class choidon extends StatefulWidget {
  const choidon({super.key});

  @override
  State<choidon> createState() => _choidonState();
}

// ignore: camel_case_types
class _choidonState extends State<choidon> {
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
            padding: EdgeInsets.all(kDefaultPadding),
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
            child: Text('Câu hỏi \n Ai đã đặt tên cho dòng sông'),
            margin: EdgeInsets.only(
              bottom: 40,
            ),
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
              Text('data'),
              Text('data'),
              Text('data'),
            ],
          )
        ],
      ),
    );
  }
}
