import 'package:flutter/material.dart';
import 'dart:html' as html;


class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                //backgroundColor: Colors.blueAccent,
                backgroundImage: Image.asset("assets/myAvatar.jpg").image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Rahul Verma",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'LilyScriptOne',
                  color: Colors.greenAccent,
                  fontSize: 40.0
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Flutter  CP  DSA  Java ",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    label: Text("Github"),
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset("github.png"),
                    ),
                    onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                  ),
                  FlatButton.icon(
                    label: Text("Linkedin"),
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset("linkedin.png"),
                    ),
                    onPressed:()=> html.window.open("https://www.linkedin.com/in/rahulverma6023/", "Rahul"),
                  ),
                  FlatButton.icon(
                    label: Text("Instagram"),
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset("instagram.png"),
                    ),
                    onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                  ),
                  FlatButton.icon(
                    label: Text("Medium"),
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset("medium.png"),
                    ),
                    onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                  ),


                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton.icon(
                    label: Text("Twitter"),
                    icon: SizedBox(
                      width: 40,
                      height: 20,
                      child: Image.asset("twitter.png"),
                    ),
                    onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                  ),
                  FlatButton.icon(
                    label: Text("Facebook"),
                    icon: SizedBox(
                      width: 40,
                      height: 20,
                      child: Image.asset("facebook.png"),
                    ),
                    onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                  ),
                  FlatButton.icon(
                    label: Text("Codeforces"),
                    icon: SizedBox(
                      width: 40,
                      height: 20,
                      child: Image.asset("code.png"),
                    ),
                    onPressed:()=> html.window.open("http://codeforces.com/profile/rv6023", "Rahul"),
                  ),
                  FlatButton.icon(
                    label: Text("Codechef"),
                    icon: SizedBox(
                      width: 40,
                      height: 20,
                      child: Image.asset("cchef.png"),
                    ),
                    onPressed:()=> html.window.open("https://www.codechef.com/users/rahul60231023", "Rahul"),
                  ),
                ],
              )
            ],
          ),
      ),
    );
  }
}
