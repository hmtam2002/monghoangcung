import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game.dart';
import 'package:monghoangcung/screens/trangchu/trangchu.dart';

import '../../constants.dart';

class finalsiglegame extends StatefulWidget {
  const finalsiglegame({super.key});

  @override
  State<finalsiglegame> createState() => _finalsiglegameState();
}

class _finalsiglegameState extends State<finalsiglegame> {
  @override
  Widget build(BuildContext context) {
    return nen_game(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width / 4 * 3,
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
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Level 1',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 5 - 20,
                        height: MediaQuery.of(context).size.width / 5 - 20,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/1.jpg'),
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Ten nguoi choi',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Point: 500',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding * 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const trangchu()));
                        },
                        child: Icon(
                          Icons.home,
                          color: Colors.brown.withOpacity(0.8),
                          size: 50,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const trangchu()));
                        },
                        child: Icon(
                          Icons.settings_backup_restore,
                          color: Colors.brown.withOpacity(0.8),
                          size: 50,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const trangchu()));
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
  }
}
