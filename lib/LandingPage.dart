import 'package:flutter/material.dart';
import 'package:skillernr/profile.dart';
import 'LevelSelect.dart';
import 'Information.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:hexcolour/hexcolour.dart';
class LandingPage extends StatelessWidget {
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
                 child: Courses().course1.text.black.bold.size(40).makeCentered().box.square(170).roundedLg.blue300.make(),
                 onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LevelSelectUI()));
                 },
                  ),
                
                 TextButton(
                 child:Courses().course2.text.black.bold.size(40).makeCentered().box.square(170).roundedLg.blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
              
               HStack(
                [
                 TextButton(
                 child:Courses().course3.text.black.bold.size(40).makeCentered().box.square(170).roundedLg.blue300.make(),
                 onPressed: (){},
                  ),
    
                 TextButton(
                 child:Courses().course4.text.black.bold.size(40).makeCentered().box.square(170).roundedLg.blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
            ],
          ).centered(),
        ).scrollVertical(),

         bottomNavigationBar: BottomNavigationBar(
           
        elevation: 10,
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,size: 30,color: Colors.black,),
            backgroundColor: Colors.yellow[600],
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,size: 30,color: Colors.black,),
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 30,color: Colors.black,),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,size: 30,color: Colors.black,),
            label: ''
          ),
        ],
      ),
      ),
    );
  }
}