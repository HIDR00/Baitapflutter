import 'package:flutter/material.dart';
import 'package:baitap/level2/2.1.dart';
import 'package:baitap/level2/2.2.dart';
import 'package:baitap/level2/2.3.dart';
import 'package:baitap/level2/2.4.dart';
import 'package:baitap/level2/2.5.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Level2 extends StatefulWidget {
  const Level2({super.key});

  @override
  State<Level2> createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 2"),
      ),
      body: Container(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai1()));
                },
                child: Text("Bai 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai2()));
                },
                child: Text("Bai 2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai3()));
                },
                child: Text("Bai 3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai4()));
                },
                child: Text("Bai 4")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai5()));
                },
                child: Text("Bai 5")),
          ],
        ),
      ),
    );
  }
}
