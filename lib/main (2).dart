import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.gray200,
        body: Container(
          child: VStack(
            [
              SizedBox(height:50,),
              "Let's add something about, ".richText.size(20).gray700.withTextSpanChildren(["you".textSpan.bold.make()]).makeCentered(),
              SizedBox(height:10,),
              // Icon(Icons.add,size: 100,color: Vx.white,).box.square(280).yellow500.roundedLg.makeCentered(),
              Image.asset("asset/add-icon.png").box.square(280).yellow400.roundedLg.makeCentered(),
              SizedBox(height:10,),
              
            ]
          ),
        ),
      ),
    );
  }
}