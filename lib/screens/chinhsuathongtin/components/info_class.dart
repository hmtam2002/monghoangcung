class info {
  info({
    required this.username,
    required this.email,
    required this.phonenumber,
  });
  String username;
  String phonenumber;
  String email;
  static List<info> lstImgInfo = [
    info(username: 'username', email: 'email', phonenumber: 'phonenumber')
  ];
}
