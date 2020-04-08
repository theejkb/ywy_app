import 'package:YWYMobilier/ui/pages/homePage.dart';
import 'package:YWYMobilier/ui/pages/signUpPage.dart';
import 'package:YWYMobilier/ui/widgets/signInCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
    width: 16.0,
    height: 16.0,
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.black)),
    child: isSelected
        ? Container(
      width: double.infinity,
      height: double.infinity,
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    )
        : Container(),
  );

  Widget horizontalLine() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: ScreenUtil.getInstance().setWidth(120),
      height: 1.0,
      color: Colors.black26.withOpacity(.2),
    ),
  );


  @override
  Widget build(BuildContext context) {
//    fetchProperties().then((value) {
//      setState(() {
//        _properties.addAll(value);
//      });
//    });
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset("assets/image_02.png")
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Text("YWYMobilier",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(65),
                          fontFamily: "Poppins-Bold",
                          letterSpacing: .9)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/logo_blanc_shadow.png",
                        width: ScreenUtil.getInstance().setWidth(200),
                        height: ScreenUtil.getInstance().setHeight(200),
                      ),
                    ],
                  ),
                  SizedBox(
                    //espacement entre titre et formcard
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  SignInCardWidget(),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 12.0,
                          ),
                          GestureDetector(
                            onTap: _radio,
                            child: radioButton(_isSelected),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text("Remember me",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: "Poppins-Medium"))
                        ],
                      ),
                      InkWell(
                        child: Container(
                          width: ScreenUtil.getInstance().setWidth(330),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFF17ead9),
                                Color(0xFF6078ea)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType
                                            .rightToLeftWithFade,
                                        child: HomePage()));
                              },
                              child: Center(
                                child: Text("SE CONNECTER",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins-Bold",
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Pas encore de compte? ",
                        style: TextStyle(fontFamily: "Poppins-Medium"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.upToDown,
                                  child: SignUpPage()));
                        },
                        child: Text("Inscris-toi",
                            style: TextStyle(
                                color: Color(0xFF5d74e3),
                                fontFamily: "Poppins-Bold")),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
//
//
//import 'dart:convert';
//
//import 'package:YWYMobilier/ui/pages/homePage.dart';
//import 'package:YWYMobilier/ui/pages/signUpPage.dart';
//import 'package:bottom_navy_bar/bottom_navy_bar.dart';
//import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:http/http.dart' as http;
//import 'package:shared_preferences/shared_preferences.dart';
//
//class Login extends StatefulWidget {
//  @override
//  _LoginState createState() => _LoginState();
//}
//
//enum LoginStatus { notSignIn, signIn }
//
//class _LoginState extends State<Login> {
//  LoginStatus _loginStatus = LoginStatus.notSignIn;
//  String email, password;
//  final _key = new GlobalKey<FormState>();
//
//  bool _secureText = true;
//
//  showHide() {
//    setState(() {
//      _secureText = !_secureText;
//    });
//  }
//
//  check() {
//    final form = _key.currentState;
//    if (form.validate()) {
//      form.save();
//      login();
//    }
//  }
//
//  login() async {
//    final response = await http
//        .post("https://portfoliosteven.000webhostapp.com/api_verification.php", body: {
//      "flag": 1.toString(),
//      "email": email,
//      "password": password,
//      "api_token": "test_fcm_token"
//    });
//
//    final data = jsonDecode(response.body);
//    int value = data['value'];
//    String message = data['message'];
//    String emailAPI = data['email'];
//    String nameAPI = data['name'];
//    String id = data['id'];
//
//    if (value == 1) {
//      setState(() {
//        _loginStatus = LoginStatus.signIn;
//        savePref(value, emailAPI, nameAPI, id);
//      });
//      print(message);
//      loginToast(message);
//    } else {
//      print("fail");
//      print(message);
//      loginToast(message);
//    }
//  }
//
//  loginToast(String toast) {
//    return Fluttertoast.showToast(
//        msg: toast,
//        toastLength: Toast.LENGTH_SHORT,
//        gravity: ToastGravity.BOTTOM,
//        timeInSecForIos: 1,
//        backgroundColor: Colors.red,
//        textColor: Colors.white);
//  }
//
//  savePref(int value, String email, String name, String id) async {
//    SharedPreferences preferences = await SharedPreferences.getInstance();
//    setState(() {
//      preferences.setInt("value", value);
//      preferences.setString("name", name);
//      preferences.setString("email", email);
//      preferences.setString("id", id);
//      preferences.commit();
//    });
//  }
//
//  var value;
//
//  getPref() async {
//    SharedPreferences preferences = await SharedPreferences.getInstance();
//    setState(() {
//      value = preferences.getInt("value");
//
//      _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSignIn;
//    });
//  }
//
//  signOut() async {
//    SharedPreferences preferences = await SharedPreferences.getInstance();
//    setState(() {
//      preferences.setInt("value", null);
//      preferences.setString("name", null);
//      preferences.setString("email", null);
//      preferences.setString("id", null);
//
//      preferences.commit();
//      _loginStatus = LoginStatus.notSignIn;
//    });
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    getPref();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    switch (_loginStatus) {
//      case LoginStatus.notSignIn:
//        return Scaffold(
//          backgroundColor: Colors.black,
//          body: Center(
//            child: ListView(
//              shrinkWrap: true,
//              padding: EdgeInsets.all(15.0),
//              children: <Widget>[
//                Center(
//                  child: Container(
//                    padding: const EdgeInsets.all(8.0),
////            color: Colors.grey.withAlpha(20),
//                    color: Colors.black,
//                    child: Form(
//                      key: _key,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Image.network(
//                              "https://www.logogenie.net/download/preview/medium/3589659"),
//                          SizedBox(
//                            height: 40,
//                          ),
//                          SizedBox(
//                            height: 50,
//                            child: Text(
//                              "Login",
//                              style: TextStyle(
//                                  color: Colors.white, fontSize: 30.0),
//                            ),
//                          ),
//                          SizedBox(
//                            height: 25,
//                          ),
//
//                          //card for Email TextFormField
//                          Card(
//                            elevation: 6.0,
//                            child: TextFormField(
//                              validator: (e) {
//                                if (e.isEmpty) {
//                                  return "Please Insert Email";
//                                }
//                              },
//                              onSaved: (e) => email = e,
//                              style: TextStyle(
//                                color: Colors.black,
//                                fontSize: 16,
//                                fontWeight: FontWeight.w300,
//                              ),
//                              decoration: InputDecoration(
//                                  prefixIcon: Padding(
//                                    padding:
//                                    EdgeInsets.only(left: 20, right: 15),
//                                    child:
//                                    Icon(Icons.person, color: Colors.black),
//                                  ),
//                                  contentPadding: EdgeInsets.all(18),
//                                  labelText: "Email"),
//                            ),
//                          ),
//
//                          // Card for password TextFormField
//                          Card(
//                            elevation: 6.0,
//                            child: TextFormField(
//                              validator: (e) {
//                                if (e.isEmpty) {
//                                  return "Password Can't be Empty";
//                                }
//                              },
//                              obscureText: _secureText,
//                              onSaved: (e) => password = e,
//                              style: TextStyle(
//                                color: Colors.black,
//                                fontSize: 16,
//                                fontWeight: FontWeight.w300,
//                              ),
//                              decoration: InputDecoration(
//                                labelText: "Password",
//                                prefixIcon: Padding(
//                                  padding: EdgeInsets.only(left: 20, right: 15),
//                                  child: Icon(Icons.phonelink_lock,
//                                      color: Colors.black),
//                                ),
//                                suffixIcon: IconButton(
//                                  onPressed: showHide,
//                                  icon: Icon(_secureText
//                                      ? Icons.visibility_off
//                                      : Icons.visibility),
//                                ),
//                                contentPadding: EdgeInsets.all(18),
//                              ),
//                            ),
//                          ),
//
//                          SizedBox(
//                            height: 12,
//                          ),
//
//                          FlatButton(
//                            onPressed: null,
//                            child: Text(
//                              "Forgot Password?",
//                              style: TextStyle(
//                                  color: Colors.white,
//                                  fontWeight: FontWeight.bold),
//                            ),
//                          ),
//
//                          Padding(
//                            padding: EdgeInsets.all(14.0),
//                          ),
//
//                          new Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                            children: <Widget>[
//                              SizedBox(
//                                height: 44.0,
//                                child: RaisedButton(
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius:
//                                        BorderRadius.circular(15.0)),
//                                    child: Text(
//                                      "Login",
//                                      style: TextStyle(fontSize: 18.0),
//                                    ),
//                                    textColor: Colors.white,
//                                    color: Color(0xFFf7d426),
//                                    onPressed: () {
//                                      check();
//                                    }),
//                              ),
//                              SizedBox(
//                                height: 44.0,
//                                child: RaisedButton(
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius:
//                                        BorderRadius.circular(15.0)),
//                                    child: Text(
//                                      "GoTo Register",
//                                      style: TextStyle(fontSize: 18.0),
//                                    ),
//                                    textColor: Colors.white,
//                                    color: Color(0xFFf7d426),
//                                    onPressed: () {
//                                      Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (context) => SignUpPage()),
//                                      );
//                                    }),
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        );
//        break;
//
//      case LoginStatus.signIn:
//        return HomePage();
////        return ProfilePage(signOut);
//        break;
//    }
//  }
//}