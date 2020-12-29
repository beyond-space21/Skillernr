import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'profile.dart';
import 'LandingPage.dart';
import 'Dateformater.dart';
// import 'package:email_validator/email_validator.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Vx.gray200,
          elevation: 0,
           leading: IconButton(
    icon: Icon(Icons.keyboard_arrow_left, color:Vx.yellow500,size: 45,),
    onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile()));
                  }
        ), 
        ),
        
        backgroundColor: Vx.gray200,
        body: Container(
          child: VStack(
            [
              Padding(padding: EdgeInsets.only(bottom: 70)),
    TextFormField(
        decoration: InputDecoration(hintText: 'Email'),
        ).box.width(300).make().centered(),
              Padding(padding: EdgeInsets.only(bottom: 70)),
        "  Gender".text.gray700.semiBold.size(17).make(),
        HStack([
          IconButton(
          icon: Icon(Icons.crop_square_rounded, color:Vx.yellow500,size: 45,),
          onPressed: (){},
          ),
          "Male".text.bold.make(),
          

          IconButton(
          icon: Icon(Icons.crop_square_rounded, color:Vx.yellow500,size: 45,),
          onPressed: (){},
          ),
          "Female".text.bold.make(),
          
          IconButton(
          icon: Icon(Icons.crop_square_rounded, color:Vx.yellow500,size: 45,),
          onPressed: (){},
          ),
          "Other".text.bold.make(),
        ]).centered(),
        Padding(padding: EdgeInsets.only(bottom: 70)),
        "  Date of birth".text.gray700.semiBold.size(17).make(),
        TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'example: 12th mar 2020',
                  hintStyle: TextStyle(fontSize: 15),
                ),
                ).box.width(300).make().centered(),
            Padding(padding: EdgeInsets.only(bottom: 70)),
            FlatButton(
                  child: 'NEXT >'.text.bold.size(20).makeCentered(),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LandingPage()));
                  }),
            
            ]),
            
        ).scrollVertical(),
      ),
    );
  }
}

