import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AccueilWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Text(
                  "Le but du projet YWYmobilier est de faciliter la vie des étudiants à la recherche de logement. Notre objectif est de regrouper de nombreuses demandes de particuliers cherchant des locataires sur la villede Lyon. Vous n'aurez plus qu'a naviguer dans l'onglet Offres, de récupérer les informations qui vous semblent importantes, de noter le numéro de téléphone du particulier et le tour est joué",
              style: TextStyle(fontFamily: "Poppins-Medium"),
              ),
            ),
            SizedBox(
              //espacement entre titre et formcard
              height: ScreenUtil.getInstance().setHeight(40),
            ),
          ],
        ),
      ]),
    );
  }
}
