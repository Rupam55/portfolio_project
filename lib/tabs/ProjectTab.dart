import 'package:flutter/material.dart';
import 'package:portfolio2/TileAnsConstant/Tile.dart';
import 'package:portfolio2/TileAnsConstant/InfoTab.dart';
int index=0;
class ProjectTab extends StatefulWidget {
  @override
  _ProjectTabState createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {

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
                        index=1;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SkillTile("DSA1", "https://github.com/rv299792458"),
                      ),
                    ),
                    GestureDetector(

                      onTap: ()=>setState((){
                        index=1;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SkillTile("DSA1", "https://github.com/rv299792458"),
                      ),
                    ),
                    GestureDetector(

                      onTap: ()=>setState((){
                        index=1;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SkillTile("DSA1", "https://github.com/rv299792458"),
                      ),
                    ),
                    GestureDetector(

                      onTap: ()=>setState((){
                        index=1;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SkillTile("DSA1", "https://github.com/rv299792458"),
                      ),
                    ),
                    GestureDetector(

                      onTap: ()=>setState((){
                        index=1;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SkillTile("DSA1", "https://github.com/rv299792458"),
                      ),
                    ),
                    GestureDetector(

                      onTap: ()=>setState((){
                        index=1;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SkillTile("DSA1", "https://github.com/rv299792458"),
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
