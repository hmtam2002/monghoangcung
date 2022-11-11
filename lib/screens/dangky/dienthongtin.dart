import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/dangky/thanhcong.dart';

class dienthongtin extends StatelessWidget {
  const dienthongtin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/a.png'),
        fit: BoxFit.cover,
      )),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Nhập thông tin',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const TextField(
              style: TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(),
                hintText: "Tên tài khoản",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const TextField(
              style: TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(),
                hintText: "Email",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const TextField(
              style: TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(),
                hintText: "Ngày sinh",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const TextField(
              style: TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(),
                hintText: "Số điện thoại",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const dangkythanhcong()));
              },
              child: const Text('Đăng ký'),
            )
          ],
        ),
      ),
    );
  }
}
