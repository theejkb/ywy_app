import 'package:YWYMobilier/ui/pages/offresDetailsPage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../../core/models/Property.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:YWYMobilier/core/models/Property.dart';

class OffresWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var propertiesProvider = Provider.of<List<Property>>(context);
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0, bottom: 20),
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
      child:ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType
                              .rightToLeftWithFade,
                          child: OffresDetailsPage(property: propertiesProvider[index])));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 100,
                  width: double.infinity,
                  child: Text(
                      propertiesProvider[index].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: "Poppins-Bold",
                          fontSize: 15,
                          letterSpacing: 1.0)
                  ),

//                      child: Image.asset(
//                        "assets/lyon.jpg",
//                      ),
                ),
              ),
            ),
          );
        },
        itemCount: propertiesProvider.length,
      ),

    );
  }
}


