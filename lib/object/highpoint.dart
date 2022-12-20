class highpoint {
  highpoint(
      {required this.top1,
      required this.top1name,
      required this.top2,
      required this.top2name,
      required this.top3,
      required this.top3name});
  final String top1name;
  final String top2name;
  final String top3name;
  final int top1;
  final int top2;
  final int top3;
  Map<String, dynamic> toJson() => {
        'top1': top1,
        'top1name': top1name,
        'top2': top2,
        'top2name': top2name,
        'top3': top3,
        'top3name': top3name
      };
  static highpoint fromjson(Map<String, dynamic> json) => highpoint(
      top1: json['top1'],
      top1name: json['top1name'],
      top2: json['top2'],
      top2name: json['top2name'],
      top3: json['top3'],
      top3name: json['top3name']);
}
