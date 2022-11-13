import 'package:flutter/material.dart';
import 'package:monghoangcung/constants.dart';

class nut_an_dangnhap extends StatelessWidget {
  const nut_an_dangnhap({
    Key? key,
    required this.press,
  }) : super(key: key);
  final MaterialPageRoute press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(kPrimaryColor.withOpacity(0.8)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            press,
          );
        },
        child: Row(
          children: const [
            Expanded(child: Text('Tiếp theo')),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
