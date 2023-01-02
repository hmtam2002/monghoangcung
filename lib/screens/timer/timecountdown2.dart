import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/tra_loi/level1.dart';

void main() => runApp(const Countimedown2());

class Countimedown2 extends StatefulWidget {
  const Countimedown2({super.key});
  @override
  State<Countimedown2> createState() => _CountimedownState2();
}

class _CountimedownState2 extends State<Countimedown2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TimeCircularCountdown(
      unit: CountdownUnit.second,
      countdownTotal: 20,
      countdownRemainingColor: Colors.black,
      countdownTotalColor: Colors.grey,
      // ignore: avoid_print
      onUpdated: (unit, remaining) => print(
        "$CountdownUnit.second",
      ),
      onFinished: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Level1(),
            ));
      },
      textStyle: const TextStyle(color: Colors.black, fontSize: 30),
      isClockwise: true,
    );
  }
}
