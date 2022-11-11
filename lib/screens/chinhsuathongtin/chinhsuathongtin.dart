import 'package:flutter/material.dart';

import '../trangchu/trangchu.dart';
import '../trangcanhan/trangcanhan.dart';

class EditInfo extends StatefulWidget {
  const EditInfo({super.key});

  @override
  State<EditInfo> createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
  TextEditingController _username = new TextEditingController();
  TextEditingController _phonenumber = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  String? _num = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(10),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const trangchu()));
                },
                child: Icon(
                  Icons.home_rounded,
                  color: Colors.brown.withOpacity(0.8),
                  size: 50,
                ),
              ),
            ],
          ),
          Container(
            child: Icon(
              Icons.account_box_sharp,
              size: MediaQuery.of(context).size.width / 4,
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Text(
            'CẬP NHẬT THÔNG TIN',
            style: TextStyle(
                fontSize: 25,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 9 / 10,
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _username,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white54,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Username',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 9 / 10,
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white54,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Email'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 9 / 10,
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _phonenumber,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white54,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'SDT'),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _num = 'Cập nhật thành công ';
                });
              },
              child: const Text(
                'Cập Nhật',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue.withOpacity(0.7)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          _num!,
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

class info {
  info({
    required this.username,
    required this.email,
    required this.phonenumber,
  });
  String username;
  String phonenumber;
  String email;
  static List<info> lstImgInfo = [
    info(username: 'username', email: 'email', phonenumber: 'phonenumber')
  ];
}
