class questionobject {
  final int? id;
  final String username;
  final String name;
  final String birthday;
  final String password;

  questionobject({
    this.id,
    required this.username,
    required this.name,
    required this.birthday,
    required this.password,
  });

  questionobject.fromJson(Map<String, dynamic> res)
      : id = res["id"],
        username = res["username"],
        name = res["name"],
        birthday = res["birthday"],
        password = res["password"];

  Map<String, Object?> toJson() {
    return {
      "id": id,
      "username": username,
      'name': name,
      "birthday": birthday,
      "password": password,
    };
  }
}
