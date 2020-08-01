import 'package:portfolio2/Mobile/AboutMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'AboutMobile.dart';
import 'ProjectMobile.dart';
import 'SkillMobile.dart';
import 'package:portfolio2/tabs/SkillTab.dart';
import 'package:portfolio2/tabs/ProjectTab.dart';


class HomepageMobile extends StatefulWidget {
  @override
  _HomepageMobileState createState() => _HomepageMobileState();
}

class _HomepageMobileState extends State<HomepageMobile> {
  int _selectedIndex = 0;
  bool boolTrue=true;
  static List<Widget> tabWidgets = [
    AboutMobile(),
    SkillMobile(),
    ProjectMobile(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: boolTrue?AppBar(
          centerTitle: true,
          title: Text("Hire Me!",style: TextStyle(fontFamily: "LilyScriptOne",fontWeight: FontWeight.w300,fontSize: 20),)
      ):null,
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("About")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), title: Text("Skills")),
          BottomNavigationBarItem(
              icon: Icon(Icons.brush), title: Text("Projects"))
        ],
        currentIndex: _selectedIndex,

        onTap: (index)=>setState(
                (){_selectedIndex=index;if(index!=0)boolTrue=false;else boolTrue=true;}
          // ()=>_selectedIndex=index
        ),
      ),



    );
  }
}
