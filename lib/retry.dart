import 'package:flutter/material.dart';
import 'package:skillernr/successPayment.dart';
import 'LevelSelect.dart';
import 'package:velocity_x/velocity_x.dart';


// import 'package:hexcolour/hexcolour.dart';
class PaymentFailurePage extends StatefulWidget {
  @override
  _PaymentFailurePageState createState() => _PaymentFailurePageState();
}

class _PaymentFailurePageState extends State<PaymentFailurePage> {
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
            icon:Icon(Icons.person,size: 40,color: Vx.yellow500,),
            onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LevelSelectUI()));
                  }
            ),
          ),
        )
      ],
        ),
        backgroundColor: Vx.gray200,
        body: 
          VStack(
            [
              // Padding( padding: EdgeInsets.only(right: 270.0),

            // child:
             ' Contact Support'.text.make().p12(),
            //  ),
             Padding( padding: EdgeInsets.only(top: 240.0),

            child:  'Payment Failed!:('.text.bold.size(20).makeCentered(),
             ),
             'If money has been deducted,it will be refunded back to your account within 11.5 working days'
             .text
             .makeCentered()
             .p20(),
                           Padding(padding: EdgeInsets.only(top:50),),

              FlatButton(
                  child: 'Retry'.text.letterSpacing(2).underline.size(20).makeCentered(),
                  
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentSuccessPage()));
                  }),
            ],
          ),

       
      ),
    );
  }
}