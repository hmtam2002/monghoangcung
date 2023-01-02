import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:monghoangcung/object/account_obj.dart';

class AccountProvider {
  Stream<List<AccountObject>> readAccounts() => FirebaseFirestore.instance
      .collection('accounts')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => AccountObject.fromJson(doc.data()))
          .toList());
}
