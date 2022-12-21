// ignore: file_names

class Account {
  Account(
      {this.id = '',
      required this.fullname,
      required this.lv,
      required this.picture});
  String id;

  final String fullname;

  final int lv;
  final String picture;
  Map<String, dynamic> toJson() => {
        'id': id,
        'fullname': fullname,
        'picture': picture,
        'lv': lv,
      };

  static Account fromJson(Map<String, dynamic> json) => Account(
        fullname: json['fullname'],
        id: json['id'],
        picture: json['picture'],
        lv: json['lv'],
      );
}
