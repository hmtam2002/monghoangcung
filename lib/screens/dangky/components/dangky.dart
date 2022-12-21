import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/dangky/components/khungnhapthongtin.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String? _num = '';
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Đăng ký',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 6),
              child: TextField(
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 6),
              child: TextField(
                controller: txtPass,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Mật khẩu',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (txtEmail.text != '' && txtPass.text != '') {
                  try {
                    final newUser = _auth.createUserWithEmailAndPassword(
                      email: txtEmail.text,
                      password: txtPass.text,
                    );

                    // ignore: unnecessary_null_comparison
                    if (newUser != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateInfo(),
                        ),
                      );
                    } else {
                      const snackBar = SnackBar(
                        content: Text('Tài khoản này không hợp lệ'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  } catch (e) {
                    const snackBar = SnackBar(content: Text('Có lỗi xảy ra'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                } else {
                  setState(() {
                    _num = 'Vui lòng không để trống email và password';
                  });
                }
              },
              // ignore: sort_child_properties_last
              child: const Text(
                'Đăng ký',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      _num!,
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
