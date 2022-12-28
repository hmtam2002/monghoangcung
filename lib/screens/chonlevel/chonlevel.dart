import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/object/account_obj.dart';
import 'package:monghoangcung/screens/chonlevel/row123.dart';
import 'package:monghoangcung/screens/chonlevel/row456.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';
import 'components/nutchuyenhuong.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Chooselv extends StatefulWidget {
  const Chooselv({super.key});

  @override
  State<Chooselv> createState() => _ChooselvState();
}

class _ChooselvState extends State<Chooselv> {
  final accid = FirebaseAuth.instance.currentUser?.uid;
  Future<AccountObject?> readAccount() async {
    final docAccounts =
        FirebaseFirestore.instance.collection('accounts').doc(accid);
    final snapshot = await docAccounts.get();
    if (snapshot.exists) {
      return AccountObject.fromJson(snapshot.data()!);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: readAccount(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          final account = snapshot.data;
          return nen_game(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TrangChu(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.brown[300],
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                  child: const Text(
                    'Màn chơi',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row123(
                  lv: account!.lv,
                ),
                Row456(
                  lv: account.lv,
                ),
                const SizedBox(
                  height: 60,
                ),
                const Nutchuyenhuong(),
              ]));
        } else {
          return Container();
        }
      }),
    );
  }
}
