import 'package:flutter/material.dart';
import 'package:skillernr/CourseTask.dart';
import 'package:skillernr/profile.dart';
import 'Information.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// import 'package:hexcolour/hexcolour.dart';
class AfterPurchasePage extends StatefulWidget {
  @override
  _AfterPurchasePageState createState() => _AfterPurchasePageState();
}

class _AfterPurchasePageState extends State<AfterPurchasePage> {
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
                            builder: (context) => Profile()));
                  }
            ),
          ),
        )
      ],
        ),
        backgroundColor: Vx.gray200,
        body: Container(
          child: VStack(
            [
              Padding(padding: EdgeInsets.only(top: 40)),
              HStack(
                [
                  TextButton(
                 child: courses[0].text.black.bold.size(40).makeCentered().box.square(170).roundedLg.blue300.make(),
                 onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseTaskPage()));
                 },
                  ),
                
                 TextButton(
                 child:courses[1].text.black.bold.size(40).makeCentered().box.square(170).roundedLg.blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
              
               HStack(
                [
                 TextButton(
                 child:courses[2].text.black.bold.size(40).makeCentered().box.square(170).roundedLg.blue300.make(),
                 onPressed: (){},
                  ),
    
                 TextButton(
                 child:courses[3].text.black.bold.size(40).makeCentered().box.square(170).roundedLg.blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
            ],
          ).centered(),
        ).scrollVertical(),

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