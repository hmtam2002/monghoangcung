import 'package:flutter/material.dart';

class CacNut extends StatelessWidget {
  const CacNut({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final MaterialPageRoute press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.6,
      height: 55,
      // decoration: BoxDecoration(gradient: kPrimatigradient),
      // height: size.height * 0.045,
      // padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(context, press);
        },
        style: ButtonStyle(
          // padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          //   (Set<MaterialState> states) {
          //     return EdgeInsets.all(13);
          //   },
          // ),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.65)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          alignment: Alignment.center,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
