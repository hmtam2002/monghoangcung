import 'package:flutter/material.dart';

import '../../chinhsuathongtin/chinhsuathongtin.dart';

class cacnuttrongtrangcanhan extends StatelessWidget {
  const cacnuttrongtrangcanhan({
    Key? key,
    required this.noidung,
  }) : super(key: key);
  final String noidung;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 9 / 10,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const EditInfo()));
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
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
