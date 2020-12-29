import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Verification.dart';
import 'profileInfo.dart';
// import 'package:image_picker/image_picker.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.gray200,
        body: Container(
          child: VStack(
            [
              Padding(padding: EdgeInsets.only(top:20),),
              "Let's add something about, ".richText.size(20).gray700.withTextSpanChildren(["you".textSpan.bold.make()]).makeCentered(),
              Padding(padding: EdgeInsets.only(top:20),),
              FlatButton(
              // child: Icon(Icons.add,size: 100,color: Vx.white,).box.square(280).yellow500.roundedLg.makeCentered(),
              child:Image.asset("asset/add-icon.png").box.square(280).yellow400.roundedLg.makeCentered(),
              onPressed: (){
                Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationPage()));
              },
              ),
              Padding(padding: EdgeInsets.only(top:30),),
              
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Name'),
              ).box.width(300).make().centered(),
              Padding(padding: EdgeInsets.only(top:50),),
              FlatButton(
                  child: 'NEXT >'.text.bold.size(20).makeCentered(),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileInfo()));
                  }),
            ]
          ),
        ),
      ),
    );
  }
}

