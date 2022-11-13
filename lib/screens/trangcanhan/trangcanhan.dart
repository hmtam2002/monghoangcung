import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/caidat/caidat.dart';
import 'package:monghoangcung/screens/chinhsuathongtin/chinhsuathongtin.dart';
import 'package:monghoangcung/screens/naptien/naptien.dart';
import 'package:monghoangcung/screens/nhanthu/nhanthu.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';
import 'package:monghoangcung/screens/trogiup/trogiup.dart';
import 'package:monghoangcung/screens/xemxephang/xemxephang.dart';

import 'components/cacnuttrongtrangcanhan.dart';

class trangcanhan extends StatefulWidget {
  const trangcanhan({super.key});

  @override
  State<trangcanhan> createState() => _trangcanhanState();
}

class _trangcanhanState extends State<trangcanhan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //ảnh nền
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/a.png'),
          fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
          child: Column(
            //nội dung
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
                      Icons.home_rounded,
                      color: Colors.brown.withOpacity(0.8),
                      size: 50,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                width: MediaQuery.of(context).size.width * 9 / 10,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.account_circle,
                        size: 60,
                        color: Colors.brown,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          'SDT',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              cacnuttrongtrangcanhan(
                noidung: 'Chỉnh sửa thông tin',
                press:
                    MaterialPageRoute(builder: (context) => const EditInfo()),
              ),
              cacnuttrongtrangcanhan(
                noidung: 'Xem xếp hạng',
                press:
                    MaterialPageRoute(builder: (context) => const xemxephang()),
              ),
              cacnuttrongtrangcanhan(
                noidung: 'Trợ giúp',
                press: MaterialPageRoute(builder: (context) => const trogiup()),
              ),
              cacnuttrongtrangcanhan(
                noidung: 'Nhận thư',
                press:
                    MaterialPageRoute(builder: (context) => const nhan_thu()),
              ),
              cacnuttrongtrangcanhan(
                noidung: 'Nạp tiền',
                press: MaterialPageRoute(builder: (context) => const naptien()),
              ),
              cacnuttrongtrangcanhan(
                noidung: 'Cài đặt',
                press: MaterialPageRoute(builder: (context) => const caidat()),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
