import 'package:flutter/material.dart';

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
              Icon(
                Icons.home_rounded,
                size: 50,
                color: Colors.brown.withOpacity(0.8),
              ),
              Image(image: AssetImage('assets/icon/icon.png'))
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
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text('sđt'),
                    Text('email'),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Chỉnh sửa thông tin'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Xem xếp hạng'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Trợ giúp'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Phản hồi'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Nhận thư'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Liên kết tài khoản'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Nạp tiền'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Cài đặt'),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
