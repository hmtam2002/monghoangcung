import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/dangky/nhappassword.dart';

class dangky extends StatelessWidget {
  const dangky({super.key});

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
            Image(
              image: AssetImage('assets/Logo.png'),
            ),
            Text('Tên của bạn là gì'),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const dangky1(),
                  ),
                );
              },
              child: const Text('Tiếp theo'),
            ),
          ],
        ),
      ),
    );
  }
}
