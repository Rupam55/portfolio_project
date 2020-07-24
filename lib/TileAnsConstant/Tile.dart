import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:html' as html;

Material SkillTile(String name,String url)
{
//  final String name = "";
//  final String url = "https://github.com/rv299792458";
return Material(
  color: Colors.white,
  elevation: 14.0,
  shadowColor: Colors.black87,
  borderRadius: BorderRadius.only(topRight: Radius.circular(24.0),bottomLeft: Radius.circular(24.0)),
  child: Container(
//    height: 200,
//    width: 450,
    decoration: new BoxDecoration(
      image: new DecorationImage(image: AssetImage("darkSkill.png"),
      fit: BoxFit.fill

      )
      ),

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("code.png",
            scale: 5,

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 0.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),
              FlatButton.icon(
                icon: Icon(
                  Icons.add_to_home_screen,
                ),
                label: Text("Related Link"),
                onPressed: ()=>html.window.open(url, "Rahul"),
              )
            ],
          ),
        ],
      ),
    ),
  ),
);
}