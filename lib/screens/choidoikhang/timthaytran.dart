import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/timer/timecountdown.dart';
import '../../components/nen_game.dart';
import '../../constants.dart';

class Sreached extends StatelessWidget {
  const Sreached({super.key});

  @override
  Widget build(BuildContext context) {
    return nen_game(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Text(
        'Đấu đối kháng',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      const Opacity(
        opacity: 0,
        child: SizedBox(
          height: kDefaultPadding * 3,
          child: Countimedown(),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  height: MediaQuery.of(context).size.width / 3 - 20,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/1.jpg'),
                  )),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'MAI HUU PHUOC ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                child: const Image(image: AssetImage('assets/vs1.png')),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'MAI HỮU PHƯỚC',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 3 - 20,
                height: MediaQuery.of(context).size.width / 3 - 20,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/1.jpg'),
                ),
              ),
            ],
          ),
        ],
      )
    ]));
  }
}
