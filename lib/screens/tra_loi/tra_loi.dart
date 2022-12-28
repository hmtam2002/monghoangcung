import 'package:flutter/material.dart';
import 'package:monghoangcung/components/nen_game_copy.dart';
import 'package:monghoangcung/constants.dart';
import 'package:monghoangcung/screens/choidon/ketthucchoidon.dart';
import '../../object/question_obj.dart';
import '../../provider/question_provider.dart';
import 'header.dart';

// ignore: must_be_immutable
class ManHinhTraLoi extends StatefulWidget {
  ManHinhTraLoi({
    Key? key,
    required this.id,
    required this.point,
    required this.soluongcau,
  }) : super(key: key);
  int id;
  int point;
  int soluongcau;

  @override
  State<ManHinhTraLoi> createState() => _ManHinhTraLoiState();
}

class _ManHinhTraLoiState extends State<ManHinhTraLoi> {
  List<QuestionObject> test = [];

  Future<List<QuestionObject>> _loaddanhsachcauhoi() async {
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
      body: FutureBuilder<List<QuestionObject>>(
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
                            children: [
                              const Header(),
                              Text(
                                'Câu ${widget.id}',
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: kDefaultPadding,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Điểm : ${widget.point}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  minHeight: 200,
                                  minWidth: MediaQuery.of(context).size.width,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  snapshot.data![index].question,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: kDefaultPadding * 2,
                              ),
                              Container(
                                constraints: const BoxConstraints(
                                  minHeight: 50,
                                ),
                                width: MediaQuery.of(context).size.width - 40,
                                child: ElevatedButton(
                                  onPressed: button
                                      ? () {
                                          setState(() {
                                            button = false;
                                            if (snapshot.data![index].answers ==
                                                1) {
                                              button1color = Colors.green;

                                              widget.point = widget.point + 100;
                                            } else {
                                              button1color = Colors.red;

                                              widget.point = widget.point + 0;
                                            }
                                          });
                                        }
                                      : null,
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              button1color),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      snapshot.data![index].answers1!,
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.black87),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: kDefaultPadding),
                              Container(
                                constraints:
                                    const BoxConstraints(minHeight: 50),
                                width: MediaQuery.of(context).size.width - 40,
                                child: ElevatedButton(
                                  onPressed: button
                                      ? () {
                                          setState(() {
                                            button = false;
                                            if (snapshot.data![index].answers ==
                                                2) {
                                              button2color = Colors.green;

                                              widget.point = widget.point + 100;
                                            } else {
                                              button2color = Colors.red;

                                              widget.point = widget.point + 0;
                                            }
                                          });
                                        }
                                      : null,
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              button2color),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      snapshot.data![index].answers2!,
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.black87),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: kDefaultPadding),
                              Container(
                                constraints:
                                    const BoxConstraints(minHeight: 50),
                                width: MediaQuery.of(context).size.width - 40,
                                child: ElevatedButton(
                                  onPressed: button
                                      ? () {
                                          setState(() {
                                            button = false;
                                            if (snapshot.data![index].answers ==
                                                3) {
                                              button3color = Colors.green;

                                              widget.point = widget.point + 100;
                                            } else {
                                              button3color = Colors.red;

                                              widget.point = widget.point + 0;
                                            }
                                          });
                                        }
                                      : null,
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              button3color),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      snapshot.data![index].answers3!,
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.black87),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: kDefaultPadding),
                              Container(
                                constraints:
                                    const BoxConstraints(minHeight: 50),
                                width: MediaQuery.of(context).size.width - 40,
                                child: ElevatedButton(
                                  onPressed: button
                                      ? () {
                                          setState(() {
                                            button = false;
                                            if (snapshot.data![index].answers ==
                                                4) {
                                              button4color = Colors.green;

                                              widget.point = widget.point + 100;
                                            } else {
                                              button4color = Colors.red;

                                              widget.point = widget.point + 0;
                                            }
                                          });
                                        }
                                      : null,
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              button4color),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      snapshot.data![index].answers4!,
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.black87),
                                    ),
                                  ),
                                ),
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
                                              builder: (context) =>
                                                  ManHinhTraLoi(
                                                    soluongcau:
                                                        widget.soluongcau + 1,
                                                    id: widget.id + 1,
                                                    point: widget.point,
                                                  )));
                                    } else {
                                      Navigator.pop(context);
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
