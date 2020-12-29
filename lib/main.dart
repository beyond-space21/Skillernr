import 'package:flutter/material.dart';
import 'loginOrSignup.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "demo App",
        // theme: ThemeData(
        //   primarySwatch: Colors.grey[300],
        // ),
        debugShowCheckedModeBanner: false,
        home:
            //TextPage(),
            LoginSignupPage());
  }
}
