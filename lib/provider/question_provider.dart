import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:monghoangcung/object/question_obj.dart';

class QuestionProvider {
  static Future<List<dynamic>> readJsondata() async {
    var jsontext = await rootBundle.loadString('data/dataquestion.json');
    var data = json.decode(jsontext);
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
    for (var element in data) {
      questionobject question = questionobject.fromJson(element);
      if (question.id == id) {
        lsresult.add(question);
      }
    }
    return lsresult;
  }
}
