import 'package:baitap/level1/1.1.dart';
import 'package:baitap/level1/1.2.dart';
import 'package:baitap/level1/1.3.dart';
import 'package:baitap/level1/1.4.dart';
import 'package:baitap/level1/1.5.dart';
import 'package:baitap/level1/1.6.dart';
import 'package:baitap/level1/1.7.dart';
import 'package:baitap/level1/1.8.dart';
import 'package:baitap/level1/1.9.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Level1 extends StatefulWidget {
  const Level1({super.key});

  @override
  State<Level1> createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 1"),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsetsDirectional.only(top: 50, start: 10, end: 10),
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Bai1(),
                  ));
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
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai6()));
                },
                child: Text("Bai 6")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai7()));
                },
                child: Text("Bai 7")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai8()));
                },
                child: Text("Bai 8")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai9()));
                },
                child: Text("Bai 9")),
            ElevatedButton(onPressed: () {}, child: Text("Bai 10")),
          ],
        ),
      ),
    );
  }
}
