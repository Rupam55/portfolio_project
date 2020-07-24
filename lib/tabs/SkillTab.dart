import 'package:flutter/material.dart';
import 'package:portfolio2/TileAnsConstant/Tile.dart';
import 'package:portfolio2/TileAnsConstant/InfoTab.dart';
int index=0;
class SkillTab extends StatefulWidget {
  @override
  _SkillTabState createState() => _SkillTabState();
}

class _SkillTabState extends State<SkillTab> {

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

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
             // width: 600,
              child: ListView(
                shrinkWrap: false,
              children: [
                GestureDetector(

                  onTap: ()=>setState((){
                    index=0;
                    }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SkillTile("DSA", "https://www.stopstalk.com/user/profile/rv6023","icons/dsaIcon.png"),
                  ),
                ),
                GestureDetector(

                  onTap: ()=>setState((){
                    index=1;
                  }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SkillTile("Competetive Programming", "https://www.stopstalk.com/user/profile/rv6023","icons/coding.png"),
                  ),
                ),
                GestureDetector(

                  onTap: ()=>setState((){
                    index=2;
                  }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SkillTile("Flutter", "https://github.com/rv299792458","icons/flutterIcon.png"),
                  ),
                ),
                GestureDetector(

                  onTap: ()=>setState((){
                    index=3;
                  }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SkillTile("Java Programming", "https://www.hackerrank.com/rahul6023","icons/javaIcon.png"),
                  ),
                ),

              ],
        ),
            ),
          ),

          Expanded(flex:2,child: InfoTab(index)),

        ]
      ) ,
    );
  }
}
