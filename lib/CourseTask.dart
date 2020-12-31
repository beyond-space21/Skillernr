import 'package:flutter/material.dart';
import 'package:skillernr/courseAfterPurchase.dart';
import 'package:skillernr/profile.dart';
import 'package:velocity_x/velocity_x.dart';

// import 'package:hexcolour/hexcolour.dart';
class CourseTaskPage extends StatefulWidget {
  @override
  _CourseTaskPageState createState() => _CourseTaskPageState();
}

class _CourseTaskPageState extends State<CourseTaskPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
    icon: Icon(Icons.keyboard_arrow_left, color:Vx.yellow500,size: 45,),
    onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AfterPurchasePage()));
                  }
        ), 
        title: 'Learn C'.text.black.makeCentered(),
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
              'Level 1'.text.size(20).makeCentered().p12(),
              Padding(padding: EdgeInsets.only(top: 20)),
              HStack(
                [
                  TextButton(
                 child: "Task 1".text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                  TextButton(
                 child: 'Task 2'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                
                 TextButton(
                 child:'Task 3'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
               HStack(
                [
                  TextButton(
                 child: 'Task 4'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                  TextButton(
                 child: 'Task 5'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                
                 TextButton(
                 child:'Task 6'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
               HStack(
                [
                  TextButton(
                 child: 'Task 7'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                  TextButton(
                 child: "Task 8".text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                
                 TextButton(
                 child:'Task 9'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
               HStack(
                [
                  TextButton(
                 child: 'Task 10'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                  TextButton(
                 child: 'Task 11'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                
                 TextButton(
                 child:'Task 12'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
               HStack(
                [
                  TextButton(
                 child: 'Task 13'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                  TextButton(
                 child: 'Task 14'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                
                 TextButton(
                 child:'Task 15'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
               HStack(
                [
                  TextButton(
                 child: 'Task 16'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                  TextButton(
                 child: 'Task 17'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                
                 TextButton(
                 child:'Task 18'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
               HStack(
                [
                  TextButton(
                 child: 'Task 19'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                  TextButton(
                 child: 'Task 20'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LevelSelectUI()));
                 },
                  ),
                
                 TextButton(
                 child:'Task 21'.text.black.bold.size(20).makeCentered().box.square(120).blue300.make(),
                 onPressed: (){},
                  ),
                ]
              ),
              Padding(
          padding: EdgeInsets.only(bottom: 20,left: 330.0),
          child: Container(
            // width: 50,
            // height: 50,
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   color: Colors.black, //remove this when you add image.
            // ),
          
            child: IconButton(
            icon:Icon(Icons.keyboard_arrow_right,size: 60,color: Vx.yellow500,),
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
          ).centered(),
        ).scrollVertical(),

        //  bottomNavigationBar: CurvedNavigationBar(
        //    color: Colors.amber,
        //    backgroundColor: Vx.gray200 ,
        //    height: 50,
        //    items: <Widget>[
        //    Icon(Icons.menu,size: 30,color: Colors.black,),
        //    Icon(Icons.chat,size: 30,color: Colors.black,),
        //    Icon(Icons.notifications,size: 30,color: Colors.black,),
        //    Icon(Icons.settings,size: 30,color: Colors.black,),
        //  ],
        //  animationDuration: Duration(
        //    milliseconds:200,
        //  ),
        // //  index: 0,

        //  onTap: (index){
        //   // setState(() {
        //   //   // if(index == 0){
        //   //   // }else if(index == 1){
        //   //   //   disp = 'Home';
        //   //   //   color = Colors.pinkAccent;
        //   //   // }else{
        //   //   //   disp = 'Search';
        //   //   //   color = Colors.deepPurple;
        //   //   // }
        //   // });
        // },

        //  ),
      
      ),
    );
  }
}