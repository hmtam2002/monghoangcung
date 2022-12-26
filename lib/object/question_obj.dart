class QuestionObject {
  final int? id;
  final int? answers;
  final String? answers1;
  final String? answers2;
  final String? answers3;
  final String? answers4;
  final String? question;

  QuestionObject({
    this.id,
    required this.answers,
    required this.answers1,
    required this.answers2,
    required this.answers3,
    required this.answers4,
    required this.question,
  });

  QuestionObject.fromJson(Map<String, dynamic> res)
      : id = res["id"],
        answers = res["answers"],
        answers1 = res["answers1"],
        answers2 = res["answers2"],
        answers3 = res["answers3"],
        answers4 = res["answers4"],
        question = res["question"];

  Map<String, Object?> toJson() {
    return {
      "id": id,
      "answers": answers,
      "answers1": answers1,
      "answers2": answers2,
      "answers3": answers3,
      "answers4": answers4,
      "question": question,
    };
  }
}
