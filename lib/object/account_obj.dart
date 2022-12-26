class AccountObject {
  AccountObject({
    this.id = '',
    required this.fullname,
    required this.lv,
    required this.picture,
  });
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

  static AccountObject fromJson(Map<String, dynamic> json) => AccountObject(
        fullname: json['fullname'],
        id: json['id'],
        picture: json['picture'],
        lv: json['lv'],
      );
}
