import 'dart:convert';
import 'package:YWYMobilier/core/models/Property.dart';
import 'package:http/http.dart' as http;

class PropertiesService {

  Future<List<Property>> getJsonData() async {
    var response =
    await http.get("https://stevencopy.yj.fr/api.php");

    if (response.statusCode == 200) {
      var jsonResponse = await jsonDecode(response.body)["properties"] as List;
      List<Property> propertiesList = jsonResponse.map((properties) =>
            Property.fromJson(properties)).toList();
      print(propertiesList);
      return propertiesList;
    } else {
      List<Property> propertiesList;
      print("Request failed with status : ${response.statusCode}");
      return propertiesList;
    }

  }
}