
import 'package:YWYMobilier/core/models/Property.dart';
import 'package:YWYMobilier/core/services/propertiesService.dart';
import 'package:YWYMobilier/ui/widgets/OffresWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/AccueilWidget.dart';


import '../widgets/ProfilWidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  var properties = List<Property>();

  final List<Widget> _children = [
    AccueilWidget(),
    OffresWidget(),
    ProfilWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return FutureProvider<List<Property>>.value(
      value: PropertiesService().getJsonData(),
      catchError: (_, __) => null,
      child: Scaffold(
          body: _children[_currentIndex],
        backgroundColor: Colors.blueAccent,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.art_track, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          onTap: onTabTapped
        ),
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
