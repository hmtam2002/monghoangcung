import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/level/cau2.dart';

import '../../../object/Accounts.dart';
import '../../level/level1.dart';

class row456 extends StatefulWidget {
  row456({
    Key? key,
  }) : super(key: key);

  @override
  State<row456> createState() => _row456State();
}

class _row456State extends State<row456> {
  Color color1 = Colors.white.withOpacity(0.4);

  Color color2 = Colors.white.withOpacity(0.4);

  Color color3 = Colors.white.withOpacity(0.4);

  bool i1 = false;

  bool i2 = false;
  final accid = FirebaseAuth.instance.currentUser?.uid;
  Future<Account?> readAccount() async {
    final docAccounts =
        FirebaseFirestore.instance.collection('accounts').doc(accid);
    final snapshot = await docAccounts.get();
    if (snapshot.exists) {
      return Account.fromJson(snapshot.data()!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readAccount(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final account = snapshot.data;
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (account!.lv >= 4)
                        ? () {
                            setState(() {
                              color1 = Colors.white.withOpacity(0.8);
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lv1_cau2(
                                          id: 31,
                                          point: 0,
                                          soluongcau: 1,
                                        )));
                          }
                        : null,
                    child: const Text(
                      '4',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(color1),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (account.lv >= 5)
                        ? () {
                            setState(() {
                              color2 = Colors.white.withOpacity(0.8);
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lv1_cau2(
                                          id: 41,
                                          point: 0,
                                          soluongcau: 1,
                                        )));
                          }
                        : null,
                    child: const Text(
                      '5',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(color2),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (account.lv >= 6)
                        ? () {
                            setState(() {
                              color3 = Colors.white.withOpacity(0.8);
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lv1_cau2(
                                          id: 51,
                                          point: 0,
                                          soluongcau: 1,
                                        )));
                          }
                        : null,
                    child: const Text(
                      '6',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(color3),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        }));
  }
}
