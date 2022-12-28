import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/object/account_obj.dart';
import 'package:monghoangcung/screens/trangcanhan/components/nutrove2.dart';
import 'package:monghoangcung/screens/trangcanhan/trangcanhan.dart';
import 'components/textview.dart';

class EditInfo extends StatefulWidget {
  const EditInfo({super.key});

  @override
  State<EditInfo> createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
  final accid = FirebaseAuth.instance.currentUser?.uid;
  final TextEditingController _fullname = TextEditingController();

  String? _num = '';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readAccount(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final account = snapshot.data;
            return nen_game(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const NutTroVeV2(),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          maxRadius: 60,
                          backgroundImage: AssetImage(account!.picture),
                        )),
                    const Padding(padding: EdgeInsets.all(20)),
                    const Text(
                      'CẬP NHẬT THÔNG TIN',
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
                          setState(() {
                            _num = 'Cập nhật thành công ';
                            final fullname = _fullname.text;

                            UpdateAccounts(fullname: _fullname.text);
                            final user =
                                FirebaseAuth.instance.currentUser?.reload();
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue.withOpacity(0.7)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            )),
                        child: const Text(
                          'Cập Nhật',
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
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.black),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        }));
  }

  Future<AccountObject?> readAccount() async {
    final docAccounts =
        FirebaseFirestore.instance.collection('accounts').doc(accid);
    final snapshot = await docAccounts.get();
    if (snapshot.exists) {
      return AccountObject.fromJson(snapshot.data()!);
    }
  }

  Future UpdateAccounts({required String fullname}) async {
    final docAccounts =
        FirebaseFirestore.instance.collection('accounts').doc(accid);
    docAccounts.update({'fullname': fullname});
  }
}
