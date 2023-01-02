import 'package:flutter/material.dart';
import 'package:monghoangcung/screens/tra_loi/tra_loi.dart';

class Row10 extends StatefulWidget {
  const Row10({Key? key, required this.lv}) : super(key: key);
  final int lv;
  @override
  State<Row10> createState() => _Row10State();
}

class _Row10State extends State<Row10> {
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
      if (widget.lv >= 10) {
        i1 = true;
        color1 = Colors.deepPurple.withOpacity(0.6);
      }
      if (widget.lv >= 11) {
        i2 = true;
        color2 = Colors.deepPurple.withOpacity(0.6);
      }
      if (widget.lv >= 13) {
        i3 = true;
        color3 = Colors.deepPurple.withOpacity(0.6);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width / 5,
          width: MediaQuery.of(context).size.width / 5,
          child: ElevatedButton(
            onPressed: i1
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManHinhTraLoi(
                          id: 91,
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
              '10',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 5,
          width: MediaQuery.of(context).size.width / 5,
          child: ElevatedButton(
            onPressed: i2
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManHinhTraLoi(
                                  id: 101,
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
              '11',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 5,
          width: MediaQuery.of(context).size.width / 5,
          child: ElevatedButton(
            onPressed: i3
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManHinhTraLoi(
                                  id: 111,
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
              '12',
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
