import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
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
              'Đăng nhập',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 6),
              child: TextField(
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 12),
              child: TextField(
                controller: txtPass,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  final newUser = _auth.createUserWithEmailAndPassword(
                      email: txtEmail.text, password: txtPass.text);
                  _auth.authStateChanges().listen((event) {
                    if (event != null) {
                      txtEmail.clear();
                      txtPass.clear();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TrangChu()));
                    } else {
                      const snackBar = SnackBar(
                          content: Text('Email hoặc mật khẩu không đúng'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  });
                } catch (e) {
                  const snackBar =
                      SnackBar(content: Text('Lỗi kết nối tới server'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
              child: const Text(
                'Đăng nhập',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
