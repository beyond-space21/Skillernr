import 'package:flutter/material.dart';
import 'package:skillernr/LandingPage.dart';
import 'LevelSelect.dart';
import 'package:skillernr/retry.dart';
import 'package:velocity_x/velocity_x.dart';

double rate = 0.0;
bool a = false;
// bool b = false;
// bool c = false;

// import 'package:hexcolour/hexcolour.dart';
class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: "Skillernr".text.black.bold.size(25).make(),
          backgroundColor: Vx.gray200,
          elevation: 0,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black, //remove this when you add image.
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.person,
                      size: 40,
                      color: Vx.yellow500,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()));
                    }),
              ),
            )
          ],
        ),
        backgroundColor: Vx.gray200,
        body: Container(
          child: VStack([
            Padding(padding: EdgeInsets.only(bottom: 30)),
            HStack([
              IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: Vx.yellow500,
                    size: 50,
                  ),
                  onPressed: () {
                    
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LevelSelectUI()));
                  }),
              "  Cart ".text.bold.size(30).make(),
            ]),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Container(
            child: VStack([
               HStack([
              Container(
                // height: 50,
                width: 280,
                child: Align(alignment: Alignment.centerLeft,
                child: "C - Level 1".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                ),
                Container(
                // height: 50,
                width: 120,
                child: Align(alignment: Alignment.centerRight,
                child: "\$ 55.00".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                )
            ]),

            HStack([
              Container(
                // height: 50,
                width: 280,
                child: Align(alignment: Alignment.centerLeft,
                child: "C - Level 2".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                ),
                Container(
                // height: 50,
                width: 120,
                child: Align(alignment: Alignment.centerRight,
                child: "\$ 55.00".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                )
            ]),

            HStack([
              Container(
                // height: 50,
                width: 280,
                child: Align(alignment: Alignment.centerLeft,
                child: "C - Level 3".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                ),
                Container(
                // height: 50,
                width: 120,
                child: Align(alignment: Alignment.centerRight,
                child: "\$ 55.00".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                )
            ]),

            HStack([
              Container(
                // height: 50,
                width: 280,
                child: Align(alignment: Alignment.centerLeft,
                child: "TAX: 18%".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                ),
                Container(
                // height: 50,
                width: 120,
                child: Align(alignment: Alignment.centerRight,
                child: "\$ 19.50".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                )
            ]),

            HStack([
              Container(
                // height: 50,
                width: 280,
                child: Align(alignment: Alignment.centerLeft,
                child: "    TOTAL:".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                ),
                Container(
                // height: 50,
                width: 120,
                child: Align(alignment: Alignment.centerRight,
                child: "\$ 19.50".text.size(20).make(),
                ).box.border(color: Colors.black12).make().p12()
                )
            ]),
            ]),
            
        ).scrollVertical().box.height(200).width(400).color(Colors.black12).roundedSM.makeCentered(),
          ]),
      ),
    ),
    );
  }
}