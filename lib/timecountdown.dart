import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/choidoikhang/choidoikhang.dart';

void main() => runApp(const countimedown());

class countimedown extends StatefulWidget {
  const countimedown({super.key});
  @override
  State<countimedown> createState() => _countimedownState();
}

class _countimedownState extends State<countimedown>
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
    return Container(
      child: TimeCircularCountdown(
        unit: CountdownUnit.second,
        shouldDowngradeUnit: true,
        countdownTotal: 2,
        countdownRemainingColor: Colors.black,
        countdownTotalColor: Colors.grey,
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
      ),
    );
  }
}