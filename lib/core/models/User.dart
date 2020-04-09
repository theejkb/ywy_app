class User {
  final String id;
  final String email;
  final String password;
  final String username;
  final String first_name;
  final String last_name;
  final String num;
  final String roles;
  final String api_token;

  User({this.id, this.email, this.password, this.username, this.first_name,
    this.last_name, this.num, this.roles, this.api_token});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        email: json['email'],
        password: json['password'],
        username: json['username'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        num: json['num'],
        roles: json['roles'],
        api_token: json['api_token']);
  }
}