import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/object/account_obj.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: readAccounts(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final account = snapshot.data!;
            return ListView(
              children: account.map(buildaccount).toList(),
            );
          } else {
            return const Center(
              child: Text('ERROR'),
            );
          }
        }),
      ),
    );

    // ignore: dead_code
  }

  Stream<List<AccountObject>> readAccounts() => FirebaseFirestore.instance
      .collection('accounts')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => AccountObject.fromJson(doc.data()))
          .toList());

  Widget buildaccount(AccountObject account) => ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(account.picture),
        ),
        title: Text(account.fullname),
      );
}
