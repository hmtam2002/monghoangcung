import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/object/account_obj.dart';
import 'package:monghoangcung/screens/chonlevel/chonlevel.dart';
import 'package:monghoangcung/screens/chonlevel/row111213.dart';
import 'package:monghoangcung/screens/chonlevel/row789.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Chooselv2 extends StatefulWidget {
  const Chooselv2({super.key});

  @override
  State<Chooselv2> createState() => _Chooselv2State();
}

class _Chooselv2State extends State<Chooselv2> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrangChu()));
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.brown.withOpacity(0.8),
                        size: 50,
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
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: const Text(
                    'Màn chơi',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row789(
                  lv: account!.lv,
                ),
                Row10(
                  lv: account.lv,
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chooselv()));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue.withOpacity(0.8)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            )),
                        child: const Text(
                          'Quay lại',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chooselv2()));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue.withOpacity(0.8)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            )),
                        child: const Text(
                          'Tiếp theo',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ),
                  ],
                )
              ]));
        } else {
          return Container();
        }
      }),
    );
  }
}
