import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/trangcanhan/components/nutrove2.dart';

import '../trangcanhan/trangcanhan.dart';

class Editavatar extends StatefulWidget {
  const Editavatar({super.key});

  @override
  State<Editavatar> createState() => _EditavatarState();
}

class _EditavatarState extends State<Editavatar> {
  late final String avatar;
  final accid = FirebaseAuth.instance.currentUser?.uid;
  @override
  Widget build(BuildContext context) {
    return nen_game(
      child: Column(
        children: [
          const NutTroVeV2(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Chọn avatar',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                // padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 3 - 20,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        avatar = 'assets/1.jpg';
                        UpdateAccounts(avatar: avatar);
                        FirebaseAuth.instance.currentUser?.reload();
                      });
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrangCaNhan(),
                        ),
                      );
                    },
                    icon: const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/1.jpg'),
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 3 - 20,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        avatar = 'assets/2.jpg';
                        UpdateAccounts(avatar: avatar);
                        FirebaseAuth.instance.currentUser?.reload();
                      });
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrangCaNhan(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/2.jpg'),
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 2 - 20,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        avatar = 'assets/3.jpg';
                        UpdateAccounts(avatar: avatar);
                        FirebaseAuth.instance.currentUser?.reload();
                      });
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrangCaNhan(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/3.jpg'),
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 3 - 20,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        avatar = 'assets/4.jpg';
                        UpdateAccounts(avatar: avatar);
                        FirebaseAuth.instance.currentUser?.reload();
                      });
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrangCaNhan(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/4.jpg'),
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 3 - 20,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        avatar = 'assets/5.jpg';
                        UpdateAccounts(avatar: avatar);
                        FirebaseAuth.instance.currentUser?.reload();
                      });
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrangCaNhan(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/5.jpg'),
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 3 - 20,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        avatar = 'assets/6.jpg';
                        UpdateAccounts(avatar: avatar);
                        FirebaseAuth.instance.currentUser?.reload();
                      });
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrangCaNhan(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/6.jpg'),
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 3 - 20,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        avatar = 'assets/7.jpg';
                        UpdateAccounts(avatar: avatar);
                        FirebaseAuth.instance.currentUser?.reload();
                      });
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrangCaNhan(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/7.jpg'),
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                height: MediaQuery.of(context).size.width / 3 - 20,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        avatar = 'assets/8.jpg';
                        UpdateAccounts(avatar: avatar);
                        FirebaseAuth.instance.currentUser?.reload();
                      });
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrangCaNhan(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/8.jpg'),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future UpdateAccounts({required String avatar}) async {
    final docAccounts =
        FirebaseFirestore.instance.collection('accounts').doc(accid);
    docAccounts.update({'picture': avatar});
  }
}
