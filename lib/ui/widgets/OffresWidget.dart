
import 'package:YWYMobilier/ui/pages/offresDetailsPage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:YWYMobilier/core/models/Property.dart';

import '../../core/models/Property.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffresWidget extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    var propertiesProvider = Provider.of<List<Property>>(context);
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);


    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0, bottom: 15),
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
      child: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text("Toutes les offres : ",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: "Poppins-Bold",
                    fontSize: 20,
                  )),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(60),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (propertiesProvider.length != null) {
                return Container(
                      child: Wrap(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: OffresDetailsPage(
                                          property: propertiesProvider[index])));
                            },
                            child: Container(
                              width: double.infinity,
                              child: Wrap(children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(propertiesProvider[index].title,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 15)),
                                ),
                                SizedBox(
                                  height: ScreenUtil.getInstance().setHeight(50),
                                ),
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset(
                                    "assets/lyon.jpg",
                                  ),
                                ),
                                SizedBox(
                                  height: 113,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                          propertiesProvider[index].rooms +
                                              " pièces - " +
                                              propertiesProvider[index].surface +
                                              " m²",
                                          style: TextStyle(
                                              fontFamily: "Poppins-medium",
                                              color: Colors.black87,
                                              fontSize: 16)),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                            propertiesProvider[index].price +
                                                "€/mois",
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontFamily: "Poppins-light",
                                                fontSize: 15)),
                                      ),
                                    ])
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 191,
                          ),
                        ],
                      ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
              itemCount: propertiesProvider.length,
            ),
          ],
        ),
      ),
    );
  }
}
