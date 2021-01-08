import 'package:flutter/material.dart';
import 'package:skillernr/Cart.dart';
import 'package:skillernr/LandingPage.dart';
import 'Information.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:snack/snack.dart';

double rate =0.0;
bool a=false;
bool b=false;
bool c=false;
final ar = SnackBar(content: Text('Hello, world!'));
// import 'package:hexcolour/hexcolour.dart';
class LevelSelectUI extends StatefulWidget {
  @override
  _LevelSelectUIState createState() => _LevelSelectUIState();
}

class _LevelSelectUIState extends State<LevelSelectUI> {
  void addRate(double a){
    setState((){
    rate=rate + a;
      });
  }
  void subRate(double a){
    setState((){
    rate=rate - a;
      });
  }
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
             IconButton(
              
             icon:
            Icon(Icons.person,size: 40,color: Vx.yellow500,),
             onPressed: () {
                    Navigator.pushReplacement(
                         context,
                       MaterialPageRoute(
                             builder: (context) => LandingPage()));
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
              Padding(padding: EdgeInsets.only(bottom: 30)),
                HStack([
                   VStack([
                   "  Learn ".richText.withTextSpanChildren(['f'.textSpan.bold.size(30).make()]).size(25).make().card.gray200.elevation(0).make(),
                   "     Purchase subscription to learn".text.make(),
                 ]),
                 
                  Padding(padding: EdgeInsets.only(right: 110)),
                  // FlatButton(
                 VStack([                      
                    '\$$rate'.text.make(),
                    IconButton(
                icon: Icon(Icons.shopping_cart,size: 30,color:Colors.black,),
                 onPressed: (){ 
                            if(a||b||c){
                              Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Cartpage()));
                            }
                            },
                  ),
                ]),
                  
                ]),
                              Padding(padding: EdgeInsets.only(bottom: 30)),

           VStack([
               "Use coupon code skllearnr100 to get 99% off".text.size(13).makeCentered().p16(),
              ]).box.border().height(60).width(350).makeCentered().shimmer(primaryColor: Colors.amber,secondaryColor: Colors.black),
              Padding(padding: EdgeInsets.only(bottom: 20)),
           
              FlatButton(
                
                
                child: VStack([
                "Level 1".text.size(25).bold.make().p1(),
                'Get the introduction to ${"f"} and cover the essentials to learning'.text.make().p12(),
              ]).box.border(width: 2,color: a?(Colors.green):(Colors.black)).width(350).makeCentered(),
              
              onPressed: (){
              if(a){subRate(55);a=false;}
                else{addRate(55);a=true;}
              },

                  ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              FlatButton(
                child: VStack([
                "Level 2".text.size(25).bold.make().p1(),
                
                'Intermidiate of ${"f"} and more'.text.make().p12(),
              ]).box.border(width: 2,color: b?(Colors.green):(Colors.black)).width(350).makeCentered(),
              onPressed: (){
              if(b){subRate(55);b=false;}
                else{addRate(55);b=true;}
              },
                  ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              FlatButton(
                child: VStack([
                "Level 3".text.size(25).bold.make().p1(),
                'Advanced level ${"y"} , with 100 tasks'.text.make().p12(),
              ]).box.border(width: 2,color: c?(Colors.green):(Colors.black)).width(350).makeCentered(),
              onPressed: (){
                
              if(c){subRate(55);c=false;}
                else{addRate(55);c=true;}
              },
                  ),
            ],
      ),
      
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





