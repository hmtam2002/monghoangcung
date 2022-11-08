import 'package:flutter/material.dart';

class dienthongtin extends StatelessWidget {
  const dienthongtin({super.key});

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
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Nhập thông tin'),
            TextField(
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
                hintText: "Nhập username",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextField(
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
                hintText: "Nhập username",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextField(
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
                hintText: "Nhập username",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextField(
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
                hintText: "Nhập username",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Đăng ký'),
            ),
          ],
        ),
      ),
    );
  }
}
