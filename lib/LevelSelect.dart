import 'package:flutter/material.dart';
import 'package:skillernr/LandingPage.dart';
import 'Information.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:hexcolour/hexcolour.dart';
class LevelSelectUI extends StatelessWidget {
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
            
            child: 
            // IconButton(
              
            // icon:
            Icon(Icons.person,size: 40,color: Vx.yellow500,),
            // onPressed: () {
            //         Navigator.pushReplacement(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => LandingPage()));
            //       }
            ),
          ),
        // )
      ],
        ),
        backgroundColor: Vx.gray200,
        body: Container(
          child: VStack(
            [
              Padding(padding: EdgeInsets.only(bottom: 30)),
                HStack([
                 VStack([
                   "  Learn ".richText.withTextSpanChildren([Courses().course1.textSpan.bold.size(30).make()]).size(25).make().card.gray200.elevation(0).make(),
                   "     Purchase subscription to learn".text.make(),
                 ]),
                  Padding(padding: EdgeInsets.only(right: 110)),
                  VStack([                      
                    '\$00.0'.text.make(),
                 Icon(Icons.shopping_cart,size: 30,color: Colors.black,),
                ])
                ]),
              Padding(padding: EdgeInsets.only(bottom: 30)),
              VStack([
                "Level 1".text.size(25).bold.make().p1(),
                
                'Get the introduction to ${Courses().course1} and cover the essentials to learning'.text.make().p12(),
              ]).box.border(width: 2).width(350).makeCentered(),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              VStack([
                "Level 2".text.size(25).bold.make().p1(),
                
                'Intermidiate of ${Courses().course1} and more'.text.make().p12(),
              ]).box.border(width: 2).width(350).makeCentered(),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              VStack([
                "Level 3".text.size(25).bold.make().p1(),
                
                'Advanced level ${Courses().course1} , with 100 tasks'.text.make().p12(),
              ]).box.border(width: 2).width(350).makeCentered(),
            ],
      ),
      ),
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
