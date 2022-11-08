import 'package:flutter/material.dart';

class nhapmatkhau extends StatelessWidget {
  const nhapmatkhau({super.key});

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
            const Image(
              image: AssetImage('assets/Logo.png'),
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Nhập mật khẩu',
                style: TextStyle(
                  fontSize: 20,
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
                hintText: "Mật khẩu",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Tiếp theo'),
            ),
          ],
        ),
      ),
    );
  }
}