import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/chonlevel/chonlevel.dart';
import 'package:monghoangcung/screens/phongcho/phongcho.dart';
import 'package:monghoangcung/object/account.dart';
import 'package:monghoangcung/screens/trangchu/components/cacnut.dart';
import 'components/top_header.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({super.key});

  @override
  State<TrangChu> createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
  final accid = FirebaseAuth.instance.currentUser?.uid;
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopHeader(),
          const Expanded(
            flex: 1,
            child: Image(
              image: AssetImage('assets/Logo.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CacNut(
                  text: 'Chơi đơn',
                  press: MaterialPageRoute(
                    builder: (context) => const Chooselv(),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                CacNut(
                  text: 'Chơi đối kháng',
                  press: MaterialPageRoute(
                    builder: (context) => const PhongCho(),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<Account?> readAccount() async {
    final docAccounts =
        FirebaseFirestore.instance.collection('accounts').doc(accid);
  }
}
