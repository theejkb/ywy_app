import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_shadow/icon_shadow.dart';

class ProfilWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 700, height: 1334, allowFontScaling: true);
    return new Container(
      padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 50.0),
      margin: EdgeInsets.fromLTRB(10, 35, 10, 10),
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(1200),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconShadowWidget(
              Icon(
                Icons.account_circle,
                color: Colors.blue,
                size: 150.0,
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "Pseudo",
              style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(45),
                  fontFamily: "Poppins-Bold",
                  letterSpacing: .9),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(80),
            ),
            Text(
              "Adresse Mail",
              style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(35),
                  fontFamily: "Poppins-Bold",
                  letterSpacing: .9),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "Téléphone ",
              style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(35),
                  fontFamily: "Poppins-Bold",
                  letterSpacing: .9),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}
