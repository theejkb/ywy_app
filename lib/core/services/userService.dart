import 'dart:convert';
import 'package:YWYMobilier/core/models/User.dart';
import 'package:http/http.dart' as http;


class UsersService {
  var userId;

  Future<User> getUserById(userId) async {
    var response =
    await http.get("https://stevencopy.yj.fr/apiUser.php?id="+userId);

    if (response.statusCode == 200) {
      var jsonResponse = await jsonDecode(response.body)["users"];
      User usersList = jsonResponse;
      print(usersList);
      return usersList;
    } else {
      User usersList;
      print("Request failed with status : ${response.statusCode}");
      return usersList;
    }

  }
}