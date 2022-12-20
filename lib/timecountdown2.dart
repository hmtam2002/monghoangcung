import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/level/level1.dart';

void main() => runApp(const countimedown2());

class countimedown2 extends StatefulWidget {
  const countimedown2({super.key});
  @override
  State<countimedown2> createState() => _countimedownState2();
}

class _countimedownState2 extends State<countimedown2>
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
    // ignore: avoid_unnecessary_containers
    return Container(
      child: TimeCircularCountdown(
        unit: CountdownUnit.second,
        countdownTotal: 20,
        countdownRemainingColor: Colors.black,
        countdownTotalColor: Colors.grey,
        onUpdated: (unit, remaining) => print(
          "$CountdownUnit.second",
        ),
        onFinished: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const level_1(),
              ));
        },
        textStyle: const TextStyle(color: Colors.black, fontSize: 30),
        isClockwise: true,
      ),
    );
  }
}
