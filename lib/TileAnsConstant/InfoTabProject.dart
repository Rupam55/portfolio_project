import 'package:flutter/material.dart';
import 'package:portfolio2/TileAnsConstant/Constant.dart';

const List<Text> Namelist=[
  Text("Quiz Application Windows",style: kHeadingStyle,),
  Text("CoronaCount",style: kHeadingStyle,),
  Text("FlashChat",style: kHeadingStyle,),
  Text("Clima",style: kHeadingStyle,)];
const List<Text> Textlist = [Text("You might not realise the efficiency while working on small datasets as a student, but for big data sets in real life scenarios it can create a lot of difference(and savings). So this is why DSA is so important in computer science as well as in hiring processes of big tech companies.",style: kInfoTextStyle,),
  Text("Competitive programming helps you learn how to effectively work together, as you must work with others on your team to complete the same task. You learn how to assess your team members' strength and weaknesses and effectively divide responsibilities between each other",style: kInfoTextStyle,),
  Text("Search Results Featured snippet from the webFlutter development Embrace platform differences. A Single Codebase: Flutter has a single codebase that helps you build your apps for multiple platforms with a single codebase and your app will work like a native app for all platforms. Now you don't have to write multiple codes for iOS and Android app.",style: kInfoTextStyle,),
  Text("Java is one of the most popular programming languages used to create Web applications and platforms. It was designed for flexibility, allowing developers to write code that would run on any machine, regardless of architecture or platform.",style: kInfoTextStyle,),

];
List<Widget> Imagelist=[Image.asset("projectimg/quiz2.png"),
  Image.asset("projectimg/CoronaCount2.png"),
  Image.asset("projectimg/flashChat2.png"),
  Image.asset("projectimg/clima1.png")];
const List<Text> Linklist=[Text("You can add your link here",style: kInfoTextStyle,),
  Text("You can add your link here",style: kInfoTextStyle,),
  Text("You can add your link here",style: kInfoTextStyle,),
  Text("You can add your link here",style: kInfoTextStyle,)];

Material InfoTabProject(int index)
{
  return Material(

    child: Container(
      color: Colors.black38,
//      height: 400,
//      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex:1,child: Center(child: Namelist.elementAt(1))),
            SizedBox(height: 30,),
            Expanded(flex:3,child: Imagelist.elementAt(index)),
            SizedBox(height: 30,),
            Expanded(flex:3,child: Textlist.elementAt(index)),
            SizedBox(height: 30,),
            Expanded(flex:1,child: Linklist.elementAt(index)),
          ],
        ),
      ),
    ),
  );
}
