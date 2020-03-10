import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_shadow/icon_shadow.dart';

class ProfilWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconShadowWidget(
                    Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                      size: 150.0,
                    ),
                  ),
                ],
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
        ],
      ),
    );
  }
}
