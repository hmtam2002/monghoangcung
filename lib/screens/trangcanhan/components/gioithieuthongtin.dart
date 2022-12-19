import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/object/Accounts.dart';

class gioithieuthongtin extends StatefulWidget {
  const gioithieuthongtin({
    Key? key,
  }) : super(key: key);

  @override
  State<gioithieuthongtin> createState() => _gioithieuthongtinState();
}

class _gioithieuthongtinState extends State<gioithieuthongtin> {
  @override
  final accid = FirebaseAuth.instance.currentUser?.uid;
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readAccount(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final account = snapshot.data;
            return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              width: MediaQuery.of(context).size.width * 9 / 10,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withOpacity(0.8),
              ),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(account!.picture),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        account.fullname,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'lv:' + account.lv.toString(),
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          } else {
            return Container();
          }
        }));
  }

  Future<Account?> readAccount() async {
    final docAccounts =
        FirebaseFirestore.instance.collection('accounts').doc(accid);
    final snapshot = await docAccounts.get();
    if (snapshot.exists) {
      return Account.fromJson(snapshot.data()!);
    }
  }
}
