import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:monghoangcung/components/loaddatajson/question_obj.dart';

class questionprovider {
  static Future<List<dynamic>> readJsondata() async {
    var jsontext = await rootBundle.loadString('assets/data/dataquestion.json');
    var data = json.decode(jsontext);
    print(data['question']);
    return data['question'];
  }

  static Future<List<questionobject>> getallcauhoi() async {
    List<questionobject> lsresult = [];
    List<dynamic> data = await readJsondata();
    lsresult = data.map((e) => questionobject.fromJson(e)).toList();
    return lsresult;
  }

  static Future<List<questionobject>> searchcauhoi(int id) async {
    List<questionobject> lsresult = [];
    List<dynamic> data = await readJsondata();
    data.forEach((element) {
      questionobject question = questionobject.fromJson(element);
      if (question.id == id) {
        lsresult.add(question);
      }
    });
    print(data);
    return lsresult;
  }
}
