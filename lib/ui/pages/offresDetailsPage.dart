import 'dart:ui';

import 'package:YWYMobilier/core/models/Property.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffresDetailsPage extends StatelessWidget {
  final Property property;

  OffresDetailsPage({Key key, @required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Material(
      color: Colors.blueAccent,
      type: MaterialType.transparency,
      child: Container(
        padding:
            EdgeInsets.only(left: 28.0, right: 28.0, top: 30.0, bottom: 50),
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(1200),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
           ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: FloatingActionButton(
                splashColor:
                Colors.blueAccent,
                child: Icon(
                  Icons.arrow_back
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
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    color: Color(0xFF5d74e3),
                    fontFamily: "Poppins-Bold")),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(50),
            ),
            Text(
              property.description,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black54,
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(30),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Lieu : " + property.address + " " +  property.cp + " " + property.city,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(30),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Surface : " + property.surface + " m² habitable",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(30),
                ),
              ),

            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Etage : " + property.floor,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(30),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(60),
            ),
            Text(
              "Loyer : " + property.price + "€ par mois",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black54,
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(35),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(200),
            ),
          ],
        ),
      ),
    );
  }
}
