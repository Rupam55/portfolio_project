import 'package:flutter/material.dart';
import 'package:portfolio2/TileAnsConstant/Tile.dart';
import 'package:portfolio2/TileAnsConstant/InfoTab.dart';

int index=0;
class SkillMobile extends StatefulWidget {
  @override
  _SkillMobileState createState() => _SkillMobileState();
}

class _SkillMobileState extends State<SkillMobile> {

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
      //appBar: Text("appbar"),
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
            Navigator.pop(context);
          index=0;
          }),
            child: Padding(
          padding: const EdgeInsets.all(10.0),
            child: SkillTile("DSA", "https://www.stopstalk.com/user/profile/rv6023","assets/icons/dsaIcon.png"),
          ),
          ),
          GestureDetector(

          onTap: ()=>setState((){
            Navigator.pop(context);
          index=1;
          }),
            child: Padding(
          padding: const EdgeInsets.all(10.0),
            child: SkillTile("Competetive Programming", "https://www.stopstalk.com/user/profile/rv6023","assets/icons/coding.png"),
          ),
          ),
          GestureDetector(

          onTap: ()=>setState((){
            Navigator.pop(context);
          index=2;
          }),
            child: Padding(
          padding: const EdgeInsets.all(10.0),
            child: SkillTile("Flutter", "https://github.com/rv299792458","assets/icons/flutterIcon.png"),
          ),
          ),
          GestureDetector(

          onTap: ()=>setState((){
            Navigator.pop(context);
          index=3;
          }),
            child: Padding(
          padding: const EdgeInsets.all(10.0),
            child: SkillTile("Java Programming", "https://www.hackerrank.com/rahul6023","assets/icons/javaIcon.png"),
          ),
          ),

          ],
          ),
      ),
      body: InfoTab(index),
    );




  }
}

