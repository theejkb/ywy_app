import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccueilWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0),
      margin: EdgeInsets.fromLTRB(10, 35, 10, 20),
      width: double.infinity,
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
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/logo_blanc_shadow.png",
                width: ScreenUtil.getInstance().setWidth(200),
                height: ScreenUtil.getInstance().setHeight(200),
              ),
              SizedBox(
//espacement entre titre et formcard
                height: ScreenUtil.getInstance().setHeight(40),
              ),
              Text(
                "Le but du projet YWYmobilier est de faciliter la vie des étudiants à la recherche de logement. Notre objectif est de regrouper de nombreuses demandes de particuliers cherchant des locataires sur la ville de Lyon. Vous n'aurez plus qu'a naviguer dans l'onglet Offres, de récupérer les informations qui vous semblent importantes, de noter le numéro de téléphone du particulier et le tour est joué",
                style: TextStyle(fontFamily: "Poppins-Medium"),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(100),
              ),
            ],
          ),
        ],
      )

    );
  }
}
