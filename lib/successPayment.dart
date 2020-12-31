import 'package:flutter/material.dart';
import 'package:skillernr/courseAfterPurchase.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



// import 'package:hexcolour/hexcolour.dart';
class PaymentSuccessPage extends StatefulWidget {
  @override
  _PaymentSuccessPageState createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
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
                            builder: (context) => AfterPurchasePage()));
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
               Padding(padding: EdgeInsets.only(top:100),),
              'Congratulation on your purchase'.text.makeCentered(),
               Padding(padding: EdgeInsets.only(top:200),),
               TextButton(child: '    Proceed to course'. text.size(20).black.bold.make().px64(),
                onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AfterPurchasePage()));
                  }),
                  
                             Padding(padding: EdgeInsets.only(top:20),),

              '        Invite someone you to know'. text.make().px64(),

                         ],
          ),
       

         bottomNavigationBar: CurvedNavigationBar(
           color: Colors.amber,
           backgroundColor: Vx.gray200 ,
           height: 50,
           items: <Widget>[
           Icon(Icons.menu,size: 30,color: Colors.black,),
           Icon(Icons.chat,size: 30,color: Colors.black,),
           Icon(Icons.notifications,size: 30,color: Colors.black,),
           Icon(Icons.settings,size: 30,color: Colors.black,),
         ],
         animationDuration: Duration(
           milliseconds:200,
         ),
        //  index: 0,

         onTap: (index){
          // setState(() {
          //   // if(index == 0){
          //   // }else if(index == 1){
          //   //   disp = 'Home';
          //   //   color = Colors.pinkAccent;
          //   // }else{
          //   //   disp = 'Search';
          //   //   color = Colors.deepPurple;
          //   // }
          // });
        },

         ),
      ),
    );
  }
}