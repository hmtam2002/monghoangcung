class Account {
  Account(
      {this.id = '',
      required this.username,
      required this.fullname,
      required this.password,
      required this.lv,
      required this.picture});
  String id;
  final String username;
  final String fullname;
  final String password;
  final int lv;
  final String picture;
  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'password': password,
        'fullname': fullname,
        'picture': picture,
        'lv': lv
      };

  static Account fromJson(Map<String, dynamic> json) => Account(
      fullname: json['fullname'],
      username: json['username'],
      id: json['id'],
      password: json['password'],
      picture: json['picture'],
      lv: json['lv']);
}
