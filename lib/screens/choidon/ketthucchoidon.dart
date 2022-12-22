import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/chonlevel/chonlevel.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';
import '../../constants.dart';
import '../../object/Accounts.dart';
import '../level/cau2.dart';

class FinalSingleGame extends StatefulWidget {
  final int point;
  final int lv;

  const FinalSingleGame({super.key, required this.point, required this.lv});

  @override
  State<FinalSingleGame> createState() => _FinalSingleGameState();
}

class _FinalSingleGameState extends State<FinalSingleGame> {
  final accid = FirebaseAuth.instance.currentUser?.uid;
  // ignore: non_constant_identifier_names
  Future UpdateAccounts() async {
    final docAccounts =
        FirebaseFirestore.instance.collection('accounts').doc(accid);

    if (widget.point >= 500) {
      docAccounts.update({'lv': widget.lv + 1});
    }
  }

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
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readAccount(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final account = snapshot.data;
            return nen_game(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 6 * 5,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'Level ${widget.lv}',
                                style: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(10),
                                width:
                                    MediaQuery.of(context).size.width / 5 - 20,
                                height:
                                    MediaQuery.of(context).size.width / 5 - 20,
                                child: CircleAvatar(
                                  maxRadius: 40,
                                  backgroundImage: AssetImage(account!.picture),
                                )),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                account.fullname,
                                style: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Point: ${widget.point}',
                                style: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: kDefaultPadding * 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              child: TextButton(
                                onPressed: () {
                                  if (widget.lv == account.lv &&
                                      widget.point >= 500) {
                                    UpdateAccounts();
                                  }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TrangChu()));
                                },
                                child: Icon(
                                  Icons.home,
                                  color: Colors.brown.withOpacity(0.8),
                                  size: 50,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              child: TextButton(
                                onPressed: () {
                                  if (widget.lv == account.lv &&
                                      widget.point >= 500) {
                                    UpdateAccounts();
                                  }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lv1_cau2(
                                                id: (widget.lv - 1) * 10 + 1,
                                                point: 0,
                                                soluongcau: 1,
                                              )));
                                },
                                child: Icon(
                                  Icons.settings_backup_restore,
                                  color: Colors.brown.withOpacity(0.8),
                                  size: 50,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              child: TextButton(
                                onPressed: () {
                                  if (widget.lv == account.lv &&
                                      widget.point >= 500) {
                                    UpdateAccounts();
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Chooselv(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.list_alt,
                                  color: Colors.brown.withOpacity(0.8),
                                  size: 50,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ));
          } else {
            return Container();
          }
        }));
  }
}
