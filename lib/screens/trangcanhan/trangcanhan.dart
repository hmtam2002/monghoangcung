import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/caidat/caidat.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';

class trangcanhan extends StatefulWidget {
  const trangcanhan({super.key});

  @override
  State<trangcanhan> createState() => _trangcanhanState();
}

class _trangcanhanState extends State<trangcanhan> {
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
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.account_circle,
                    size: 60,
                    color: Colors.brown,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'SDT',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 9 / 10,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Chỉnh sửa thông tin',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 9 / 10,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Xem xếp hạng',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 9 / 10,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Trợ giúp',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 9 / 10,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Phản hồi',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 9 / 10,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Nhận thư',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 9 / 10,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Nạp tiền',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 9 / 10,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const caidat()));
              },
              child: const Text(
                'Cài Đặt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
