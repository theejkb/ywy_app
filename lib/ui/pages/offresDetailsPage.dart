import 'dart:convert';
import 'dart:ui';
import 'package:YWYMobilier/core/models/Property.dart';
import 'package:YWYMobilier/core/models/User.dart';
import 'package:YWYMobilier/core/models/User.dart';
import 'package:YWYMobilier/core/services/propertiesService.dart';
import 'package:YWYMobilier/core/services/userService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:YWYMobilier/ui/widgets/CaracteristiqueWidget.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';


class OffresDetailsPage extends StatelessWidget {
  final Property property;

  OffresDetailsPage({Key key, @required this.property}) : super(key: key);

  popup(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, sett) {
              return Container();
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return FutureProvider<User>.value(
      value: UsersService().getUserById(property.user_id),
      catchError: (_, __) => null,
      child: Container(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0, bottom: 0),
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(50),
                  ),
                  Text(property.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: "Poppins-Bold",
                          fontSize: ScreenUtil.getInstance().setSp(45),
                          letterSpacing: 1.0)),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Text(property.rooms + " pièces - " + property.surface + " m²",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(35),
                          color: Color(0xFF5d74e3),
                          fontFamily: "Poppins-Medium")),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(50),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.asset(
                      "assets/lyon.jpg",
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(50),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      property.description,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Poppins-Medium",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  CustomFormInput(
                    label: "Adresse", // Simple chaîne de caractères
                    value: property.address +
                        ", " +
                        property.cp +
                        ", " +
                        property.city,
                  ),
                  CustomFormInput(
                    label: "Surface habitable",
                    // Simple chaîne de caractères
                    value: property.surface + " m²",
                  ),
                  CustomFormInput(
                    label: "Pièces", // Simple chaîne de caractères
                    value: property.rooms,
                  ),
                  CustomFormInput(
                    label: "Etage", // Simple chaîne de caractères
                    value: property.floor,
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(60),
                  ),
                  Text(
                    property.price + "€ / mois",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontFamily: "Poppins-Medium",
                      fontSize: ScreenUtil.getInstance().setSp(35),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(50),
                  ),
                  RaisedButton(
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.contact_mail,
                          color: Colors.white,
                        ),
                        Text(
                          "Contacter le propriétaire",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: "Poppins-medium",
                              color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          // ignore: missing_return
                          builder: (BuildContext context) {
                            User userProvider = Provider.of<User>(context);
                            return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                title: Text("Informations sur le propriétaire"),
                                content: Text(userProvider.first_name),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: () => Navigator.of(context).pop(),
                                    child: Text("Fermer"),
                                  )
                                ],
                            );
                          });
                    },
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(50),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }


//  Future<User> getUserById(userId) async {
//    var response =
//    await http.get("https://stevencopy.yj.fr/apiUser.php?id="+userId);
//
//    if (response.statusCode == 200) {
//      var jsonResponse = await jsonDecode(response.body)["user"];
//      User usersList = jsonResponse;
//      print(usersList);
//      return usersList;
//    } else {
//      User usersList;
//      print("Request failed with status : ${response.statusCode}");
//      return usersList;
//    }
//
//  }
}
