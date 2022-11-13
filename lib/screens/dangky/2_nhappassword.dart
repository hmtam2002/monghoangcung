import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/dangky/3_dienthongtin.dart';

// ignore: camel_case_types
class nhappassword extends StatelessWidget {
  const nhappassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/Logo.png'),
                fit: BoxFit.cover,
              ),
              const Text('Tạo một mật khẩu mới'),
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
                  hintText: "Nhập mật khẩu",
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
                          builder: (context) => const dienthongtin()));
                },
                child: const Text('Tiếp theo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
