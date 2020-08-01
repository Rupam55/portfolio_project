import 'package:flutter/material.dart';
import 'dart:html' as html;


class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 75,
              //backgroundColor: Colors.blueAccent,
              backgroundImage: Image.asset("assets/myAvatar.jpg",scale: 1.5,).image,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Rahul Verma",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'LilyScriptOne',
                  color: Colors.greenAccent,
                  fontSize: 25.0
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Flutter CP DSA Java ",
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 15
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
                    width: 10,
                    height: 20,
                    child: Image.asset("assets/github.png"),
                  ),
                  onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                ),
                FlatButton.icon(
                  label: Text("Linkedin"),
                  icon: SizedBox(
                    width: 10,
                    height: 20,
                    child: Image.asset("assets/linkedin.png"),
                  ),
                  onPressed:()=> html.window.open("https://www.linkedin.com/in/rahulverma6023/", "Rahul"),
                ),
                FlatButton.icon(
                  label: Text("Instagram"),
                  icon: SizedBox(
                    width: 10,
                    height: 20,
                    child: Image.asset("assets/instagram.png"),
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
                    width: 15,
                    height: 20,
                    child: Image.asset("assets/twitter.png"),
                  ),
                  onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                ),
                FlatButton.icon(
                  label: Text("Facebook"),
                  icon: SizedBox(
                    width: 15,
                    height: 20,
                    child: Image.asset("assets/facebook.png"),
                  ),
                  onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                ),
                FlatButton.icon(
                  label: Text("Codeforces"),
                  icon: SizedBox(
                    width: 15,
                    height: 20,
                    child: Image.asset("assets/code.png"),
                  ),
                  onPressed:()=> html.window.open("http://codeforces.com/profile/rv6023", "Rahul"),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  label: Text("Codechef"),
                  icon: SizedBox(
                    width: 15,
                    height: 20,
                    child: Image.asset("assets/cchef.png"),
                  ),
                  onPressed:()=> html.window.open("https://www.codechef.com/users/rahul60231023", "Rahul"),
                ),
                FlatButton.icon(
                  label: Text("Medium"),
                  icon: SizedBox(
                    width: 10,
                    height: 20,
                    child: Image.asset("assets/medium.png"),
                  ),
                  onPressed:()=> html.window.open("https://github.com/rv299792458", "Rahul"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
