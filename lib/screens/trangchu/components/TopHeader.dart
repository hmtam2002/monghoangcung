import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/object/account_obj.dart';
import '../../trangcanhan/trangcanhan.dart';

class TopHeader extends StatefulWidget {
  const TopHeader({Key? key}) : super(key: key);

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  final accid = FirebaseAuth.instance.currentUser?.uid;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readAccount(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final account = snapshot.data;
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TrangCaNhan()));
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage(account!.picture),
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrangCaNhan()));
                  },
                  child: Icon(
                    Icons.menu_rounded,
                    color: Colors.brown.withOpacity(0.8),
                    size: 50,
                  ),
                ),
              ],
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
}
