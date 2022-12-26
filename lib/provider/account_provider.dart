import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:monghoangcung/object/account.dart';

class AccountProvider {
  Stream<List<Account>> readAccounts() => FirebaseFirestore.instance
      .collection('accounts')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Account.fromJson(doc.data())).toList());
}
