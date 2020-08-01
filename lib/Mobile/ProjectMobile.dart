import 'package:flutter/material.dart';
import 'package:portfolio2/TileAnsConstant/Tile.dart';
import 'package:portfolio2/TileAnsConstant/InfoTabProject.dart';

int index=0;
class ProjectMobile extends StatefulWidget {
  @override
  _ProjectMobileState createState() => _ProjectMobileState();
}

class _ProjectMobileState extends State<ProjectMobile> {

  @override
  void initState() {
    // TODO: implement initState
    index=0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // print("hello1");
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Hire Me!",style: TextStyle(fontFamily: "LilyScriptOne",fontWeight: FontWeight.w300,fontSize: 20),)
      ),
      drawer: Drawer(
        child: ListView(
            shrinkWrap: false,
            children: [
            GestureDetector(

            onTap: ()=>setState((){
            index=0;
            }),
            child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: SkillTile("Quiz Application", "https://github.com/rv299792458","assets/icons/javaIcon.png"),
            ),
            ),
            GestureDetector(

            onTap: ()=>setState((){
              Navigator.pop(context);
            index=1;
//            Navigator.pop(context);
            }),
            child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: SkillTile("CoronaCount", "https://github.com/rv299792458","assets/icons/flutterIcon.png"),
            ),
            ),
            GestureDetector(

            onTap: ()=>setState((){
              Navigator.pop(context);
            index=2;
            }),
            child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: SkillTile("FlashChat", "https://github.com/rv299792458","assets/icons/flutterIcon.png"),
            ),
            ),
            GestureDetector(

            onTap: ()=>setState((){
              Navigator.pop(context);
            index=3;
            }),
            child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: SkillTile("Clima", "https://github.com/rv299792458","assets/icons/flutterIcon.png"),
            ),
            ),
    ]),
    ),
      body:  InfoTabProject(index),
    );
  }
}

//Row(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//children: [
//Expanded(
//flex: 1,
//child: Container(
//// width: 600,
//child: ListView(
//shrinkWrap: false,
//children: [
//GestureDetector(
//
//onTap: ()=>setState((){
//index=0;
//}),
//child: Padding(
//padding: const EdgeInsets.all(10.0),
//child: SkillTile("Quiz Application", "https://github.com/rv299792458","assets/icons/javaIcon.png"),
//),
//),
//GestureDetector(
//
//onTap: ()=>setState((){
//index=1;
//}),
//child: Padding(
//padding: const EdgeInsets.all(10.0),
//child: SkillTile("CoronaCount", "https://github.com/rv299792458","assets/icons/flutterIcon.png"),
//),
//),
//GestureDetector(
//
//onTap: ()=>setState((){
//index=2;
//}),
//child: Padding(
//padding: const EdgeInsets.all(10.0),
//child: SkillTile("FlashChat", "https://github.com/rv299792458","assets/icons/flutterIcon.png"),
//),
//),
//GestureDetector(
//
//onTap: ()=>setState((){
//index=3;
//}),
//child: Padding(
//padding: const EdgeInsets.all(10.0),
//child: SkillTile("Clima", "https://github.com/rv299792458","assets/icons/flutterIcon.png"),
//),
//),
//
//
//],
//),
//),
//),
//
//Expanded(flex:2,child: InfoTabProject(index)),
//
//]
//) ,