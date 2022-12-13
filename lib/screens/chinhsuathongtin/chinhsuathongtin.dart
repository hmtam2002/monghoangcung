import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/components/TopHeader.dart';
import 'components/avartar.dart';
import 'components/textview.dart';
import 'components/info_class.dart';

class EditInfo extends StatefulWidget {
  const EditInfo({super.key});

  @override
  State<EditInfo> createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
  TextEditingController _username = new TextEditingController();
  TextEditingController _phonenumber = new TextEditingController();
  TextEditingController _email = new TextEditingController();

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
              username: _email,
              text: 'email',
            ),
            textview(
              username: _phonenumber,
              text: 'phonenumber',
            ),
            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _num = 'Cập nhật thành công ';
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
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            _num!,
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
