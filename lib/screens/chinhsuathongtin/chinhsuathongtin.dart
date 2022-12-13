import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';
import 'components/avartar.dart';
import 'components/textview.dart';

class EditInfo extends StatefulWidget {
  const EditInfo({super.key});

  @override
  State<EditInfo> createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _fullname = new TextEditingController();

  String? _num = '';
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopHeader(),
            const avartar(),
            Padding(padding: EdgeInsets.all(20)),
            Text(
              'CẬP NHẬT THÔNG TIN',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            textview(
              username: _username,
              text: 'username',
            ),
            textview(
              username: _password,
              text: 'passworc',
            ),
            textview(
              username: _fullname,
              text: 'fullname',
            ),
            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _num = 'Cập nhật thành công ';
                    final fullname = _fullname.text;
                    final username = _username.text;
                    final password = _password.text;
                    UpdateAccounts(username: username);
                  });
                },
                child: Text(
                  'Cập Nhật',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue.withOpacity(0.7)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      _num!,
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future UpdateAccounts({required String username}) async {
    final docAccounts = FirebaseFirestore.instance.collection('accounts').doc();
  }
}
