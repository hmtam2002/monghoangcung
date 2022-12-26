import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:monghoangcung/object/Accounts.dart';

class AccountProvider {
  Stream<List<Account>> readAccounts() => FirebaseFirestore.instance
      .collection('accounts')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Account.fromJson(doc.data())).toList());
}
