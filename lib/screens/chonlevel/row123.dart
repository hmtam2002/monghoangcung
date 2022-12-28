import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/level/cau2.dart';
import 'package:monghoangcung/object/Accounts.dart';

class Row123 extends StatefulWidget {
  Row123({Key? key, required this.lv}) : super(key: key);
  final int lv;

  @override
  State<Row123> createState() => _Row123State();
}

// ignore: camel_case_types
class _Row123State extends State<Row123> {
  Color color1 = Colors.white.withOpacity(0.4);
  Color color2 = Colors.white.withOpacity(0.4);
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
    return null;
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.lv >= 2) i1 = true;
      if (widget.lv >= 3) i2 = true;
    });
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
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Lv1_cau2(
                                  id: 1,
                                  point: 0,
                                  soluongcau: 1,
                                )));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                  child: const Text(
                    '1',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: i1
                      ? () {
                          setState(() {
                            color1 = Colors.white.withOpacity(0.8);
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Lv1_cau2(
                                        id: 11,
                                        point: 0,
                                        soluongcau: 1,
                                      )));
                        }
                      : null,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(color1),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                  child: const Text(
                    '2',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: i2
                      ? () {
                          setState(() {
                            color2 = Colors.white.withOpacity(0.8);
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Lv1_cau2(
                                        id: 21,
                                        point: 0,
                                        soluongcau: 1,
                                      )));
                        }
                      : null,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(color2),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                  child: const Text(
                    '3',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
              ),
            ],
          );
        } else {
          return Container();
        }
      }),
    );
  }
}