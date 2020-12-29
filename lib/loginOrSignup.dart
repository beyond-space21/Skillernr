import 'package:flutter/material.dart';
import 'verification.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:hexcolour/hexcolour.dart';
class LoginSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Vx.gray200,
          elevation: 0,
        ),
        backgroundColor: Vx.gray200,
        body: Container(
          child: VStack(
            [
              
              'Skillearnr'.text.size(50).bold.makeCentered(),
              'Learn.Share.Earn'.text.bold.size(15).makeCentered(),
                             Padding(padding: EdgeInsets.only(top:20),),
              Container(
                alignment: Alignment.topCenter,
                height: 250,
                width: 350,
                color: Colors.yellow,
                
                child:VStack([
                  SizedBox(
                    height:25,
                  ),
                 "Login with your phone number".text.bold.makeCentered(),
                  SizedBox(
                    height:25,
                  ),
                 TextFormField(
                   keyboardType: TextInputType.number,
                 ).box.width(300).make().centered(),
                 SizedBox(
                    height:35,
                  ),
                 FlatButton(
                   child:"Next".text.size(20).bold.makeCentered(),
                     onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationPage()));
                  }
                   
                   )
                ])
              ).cornerRadius(50).centered(),
                   
                

             FlatButton(
                child: "Connect with Facebook".text.size(20).bold.makeCentered().box.height(45).width(350).yellow500.rounded.makeCentered(),
                padding: EdgeInsets.only(top: 25 ,bottom: 20),
                onPressed: () {},
              ),
              
              FlatButton(
                child: "Connect with Google".text.size(20).bold.makeCentered().box.height(45).width(350).yellow400.rounded.makeCentered(),
                padding: EdgeInsets.only(bottom: 20),
                onPressed: () {},
              ),
                Padding(padding: EdgeInsets.only(bottom: 40)),
               FlatButton(
                  child: 'I agree to terms of services & privacy policies'
                      .text
                      .gray500
                      .underline
                      .makeCentered(),
                  onPressed: () {
                   
                  }
               )
            ],
          ),
        ).scrollVertical(),
      ),
    );
  }
}

