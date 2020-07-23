import 'package:flutter/material.dart';
import 'package:portfolio2/TileAnsConstant/Tile.dart';

class SkillTab extends StatefulWidget {
  @override
  _SkillTabState createState() => _SkillTabState();
}

class _SkillTabState extends State<SkillTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: Text("appbar"),

      body: Row(
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SkillTile("DSA", "https://github.com/rv299792458"),
            )
          ],
        ),]
      ) ,
    );
  }
}
