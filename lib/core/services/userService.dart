//import 'dart:convert';
//import 'package:YWYMobilier/core/models/User.dart';
//import 'package:http/http.dart' as http;
//
//
//class UsersService {
//  var userId;
//
//  Future<List<User>> getUserById(userId) async {
//    var response =
//    await http.get("https://portfoliosteven.000webhostapp.com/apiUser.php?id="+userId);
//
//    if (response.statusCode == 200) {
//      var jsonResponse = await jsonDecode(response.body) as List;
//      List<User> usersList = jsonResponse.map((users) =>
//          User.fromJson(users)).toList();
//      print(usersList);
//      return usersList;
//    } else {
//      List<User> usersList;
//      print("Request failed with status : ${response.statusCode}");
//      return usersList;
//    }
//
//  }
//}
