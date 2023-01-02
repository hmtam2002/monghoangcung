import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/choidoikhang/choidoikhang.dart';

void main() => runApp(const Countimedown());

class Countimedown extends StatefulWidget {
  const Countimedown({super.key});
  @override
  State<Countimedown> createState() => _CountimedownState();
}

class _CountimedownState extends State<Countimedown>
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
      shouldDowngradeUnit: true,
      countdownTotal: 2,
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
              builder: (context) => const choidoikhang(),
            ));
      },
      textStyle: const TextStyle(color: Colors.black, fontSize: 30),
      isClockwise: true,
    );
  }
}
