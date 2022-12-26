import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';
import 'package:monghoangcung/object/Accounts.dart';
import '../../chinhsuathongtin/components/avartar.dart';
import '../../chinhsuathongtin/components/textview.dart';
import '../../trangchu/trangchu.dart';

class CreateInfo extends StatefulWidget {
  const CreateInfo({super.key});

  @override
  State<CreateInfo> createState() => _CreateInfoState();
}

class _CreateInfoState extends State<CreateInfo> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _fullname = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String? _num = '';
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopHeader(),
            const avartar(),
            const Padding(padding: EdgeInsets.all(20)),
            const Text(
              'ĐĂNG KÝ THÔNG TIN',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            textview(
              username: _fullname,
              text: 'fullname',
            ),
            Container(
              height: 50,
              width: 200,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                onPressed: () {
                  if (_fullname.text == '') {
                    setState(() {
                      _num = 'Đăng ký thất bại';
                    });
                  } else {
                    setState(() {
                      _num = 'Đăng ký thành công ';
                      final account = Account(
                          fullname: _fullname.text,
                          picture: 'assets/1.jpg',
                          lv: 1);
                      createAccounts(account: account);
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrangChu()));
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue.withOpacity(0.7)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )),
                child: const Text(
                  'Đăng ký',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      _num!,
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future createAccounts({required Account account}) async {
    final docAccounts = FirebaseFirestore.instance
        .collection('accounts')
        .doc(_auth.currentUser!.uid);
    account.id = docAccounts.id;

    final json = account.toJson();
    await docAccounts.set(json);
  }
}
