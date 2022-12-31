import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/tra_loi/tra_loi.dart';

class Row456 extends StatefulWidget {
  const Row456({Key? key, required this.lv}) : super(key: key);
  final int lv;
  @override
  State<Row456> createState() => _Row456State();
}

class _Row456State extends State<Row456> {
  Color color1 = Colors.grey;
  Color color2 = Colors.grey;
  Color color3 = Colors.grey;

  bool i1 = false;

  bool i2 = false;
  bool i3 = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.lv >= 4) {
        i1 = true;
        color1 = Colors.deepPurple.withOpacity(0.6);
      }
      if (widget.lv >= 5) {
        i2 = true;
        color2 = Colors.deepPurple.withOpacity(0.6);
      }
      if (widget.lv >= 6) {
        i3 = true;
        color3 = Colors.deepPurple.withOpacity(0.6);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.width / 6,
          width: MediaQuery.of(context).size.width / 6,
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i1
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManHinhTraLoi(
                          id: 31,
                          point: 0,
                          soluongcau: 1,
                        ),
                      ),
                    );
                  }
                : null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color1),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            child: const Text(
              '4',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width / 6,
          width: MediaQuery.of(context).size.width / 6,
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i2
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManHinhTraLoi(
                                  id: 41,
                                  point: 0,
                                  soluongcau: 1,
                                )));
                  }
                : null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color2),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            child: const Text(
              '5',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width / 6,
          width: MediaQuery.of(context).size.width / 6,
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: i3
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManHinhTraLoi(
                                  id: 51,
                                  point: 0,
                                  soluongcau: 1,
                                )));
                  }
                : null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color3),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
            child: const Text(
              '6',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
