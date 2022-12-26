import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:monghoangcung/object/question_obj.dart';

class QuestionProvider {
  //đọc json
  static Future<List<dynamic>> readJsondata() async {
    var jsontext = await rootBundle.loadString('data/dataquestion.json');
    var data = json.decode(jsontext);
    return data['question'];
  }

  //lấy danh sách câu hỏi
  static Future<List<QuestionObject>> getallcauhoi() async {
    List<QuestionObject> lsresult = [];
    List<dynamic> data = await readJsondata();
    lsresult = data.map((e) => QuestionObject.fromJson(e)).toList();
    return lsresult;
  }

  //tìm kiếm câu hỏi trong list object
  static Future<List<QuestionObject>> searchcauhoi(int id) async {
    List<QuestionObject> lsresult = [];
    List<dynamic> data = await readJsondata();
    for (var element in data) {
      QuestionObject question = QuestionObject.fromJson(element);
      if (question.id == id) {
        lsresult.add(question);
      }
    }
    return lsresult;
  }
}
