import 'package:flutter/material.dart';

class Cacnuttrongtrangcanhan extends StatelessWidget {
  const Cacnuttrongtrangcanhan({
    Key? key,
    required this.noidung,
    required this.press,
  }) : super(key: key);
  final String noidung;
  final MaterialPageRoute press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 9 / 10,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(context, press);
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.8)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            )),
        child: Text(
          noidung,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
