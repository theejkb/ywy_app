import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(1150),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
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
            Text("Inscription",
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-Bold",
                    letterSpacing: .9)),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Nom",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            //Espace entre les champs
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Prénom",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            //Espace entre les champs
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Colors.black54,
                  ),
                  hintText: "Mail",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            //Espace entre les champs
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.black54,
                  ),
                  hintText: "Pseudo",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            //Espace entre les champs
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.vpn_key,
                    color: Colors.black54,
                  ),
                  hintText: "Mot de passe",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.black54,
                  ),
                  hintText: "Confirmer le mot de passe",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            ListTile(
              title: const Text('Etudiant'),
              leading: Radio(
                value: "etudiant",
              ),
            ),
            ListTile(
              title: const Text('Propriétaire'),
              leading: Radio(
               value: "propriétaire",
              ),
            ),
            //Espace entre les champs
          ],
        ),
      ),
    );
  }
}
