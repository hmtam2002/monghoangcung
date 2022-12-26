import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game_copy.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/choidon/ketthucchoidon.dart';
import '../../object/question_obj.dart';
import '../../provider/question_provider.dart';
import '../trangchu/trangchu.dart';

class Lv1Cau2 extends StatefulWidget {
  int soluongcau;
  int id;
  int point;
  Lv1Cau2({
    Key? key,
    required this.id,
    required this.point,
    required this.soluongcau,
  }) : super(key: key);

  @override
  State<Lv1Cau2> createState() => _Lv1Cau2State();
}

class _Lv1Cau2State extends State<Lv1Cau2> {
  List<questionobject> test = [];

  Future<List<questionobject>> _loaddanhsachcauhoi() async {
    final data = await QuestionProvider.searchcauhoi(widget.id);
    setState(() {
      test = data;
    });
    return test;
  }

  @override
  void initState() {
    super.initState();
    _loaddanhsachcauhoi();
  }

  bool button = true;
  Color button1color = Colors.white.withOpacity(0.8);
  Color button2color = Colors.white.withOpacity(0.8);
  Color button3color = Colors.white.withOpacity(0.8);
  Color button4color = Colors.white.withOpacity(0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<questionobject>>(
          future: _loaddanhsachcauhoi(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) => nen_game2(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TrangChu()));
                                    },
                                    child: Icon(
                                      Icons.home,
                                      color: Colors.brown.withOpacity(0.8),
                                      size: 50,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TrangChu()));
                                    },
                                    child: Icon(
                                      Icons.settings,
                                      color: Colors.brown.withOpacity(0.8),
                                      size: 50,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Câu ${widget.id}',
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: kDefaultPadding,
                              ),
                              Text(
                                snapshot.data![index].question,
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: kDefaultPadding,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Điểm : ${widget.point}",
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: kDefaultPadding * 4,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 70,
                                          child: ElevatedButton(
                                            onPressed: button
                                                ? () {
                                                    setState(() {
                                                      button = false;
                                                      if (snapshot.data![index]
                                                              .answers ==
                                                          1) {
                                                        button1color =
                                                            Colors.green;

                                                        widget.point =
                                                            widget.point + 100;
                                                      } else {
                                                        button1color =
                                                            Colors.red;

                                                        widget.point =
                                                            widget.point + 0;
                                                      }
                                                    });
                                                  }
                                                : null,
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(button1color),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                )),
                                            child: Text(
                                              snapshot.data![index].answers1!,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: kDefaultPadding),
                                      Expanded(
                                        child: SizedBox(
                                          height: 70,
                                          child: ElevatedButton(
                                            onPressed: button
                                                ? () {
                                                    setState(() {
                                                      button = false;
                                                      if (snapshot.data![index]
                                                              .answers ==
                                                          2) {
                                                        button2color =
                                                            Colors.green;

                                                        widget.point =
                                                            widget.point + 100;
                                                      } else {
                                                        button2color =
                                                            Colors.red;

                                                        widget.point =
                                                            widget.point + 0;
                                                      }
                                                    });
                                                  }
                                                : null,
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(button2color),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                )),
                                            child: Text(
                                              snapshot.data![index].answers2!,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: kDefaultPadding),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 70,
                                          child: ElevatedButton(
                                            onPressed: button
                                                ? () {
                                                    setState(() {
                                                      button = false;
                                                      if (snapshot.data![index]
                                                              .answers ==
                                                          3) {
                                                        button3color =
                                                            Colors.green;

                                                        widget.point =
                                                            widget.point + 100;
                                                      } else {
                                                        button3color =
                                                            Colors.red;

                                                        widget.point =
                                                            widget.point + 0;
                                                      }
                                                    });
                                                  }
                                                : null,
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(button3color),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                )),
                                            child: Text(
                                              snapshot.data![index].answers3!,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: kDefaultPadding),
                                      Expanded(
                                        child: SizedBox(
                                          height: 70,
                                          child: ElevatedButton(
                                            onPressed: button
                                                ? () {
                                                    setState(() {
                                                      button = false;
                                                      if (snapshot.data![index]
                                                              .answers ==
                                                          4) {
                                                        button4color =
                                                            Colors.green;

                                                        widget.point =
                                                            widget.point + 100;
                                                      } else {
                                                        button4color =
                                                            Colors.red;

                                                        widget.point =
                                                            widget.point + 0;
                                                      }
                                                    });
                                                  }
                                                : null,
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(button4color),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                )),
                                            child: Text(
                                              snapshot.data![index].answers4!,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    margin: const EdgeInsets.all(10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (widget.soluongcau != 10) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Lv1Cau2(
                                                        soluongcau:
                                                            widget.soluongcau +
                                                                1,
                                                        id: widget.id + 1,
                                                        point: widget.point,
                                                      )));
                                        } else {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FinalSingleGame(
                                                        point: widget.point,
                                                        lv: widget.id ~/ 10,
                                                      )));
                                        }
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.blue.withOpacity(0.8)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ),
                                      ),
                                      child: const Text(
                                        'Tiếp theo',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ));
            } else {
              return const Text('1');
            }
          }),
    );
  }
}
