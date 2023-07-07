import 'package:flutter/material.dart';
import 'package:baitap/level4/4.1.dart';
import 'package:baitap/level4/4.2.dart';
import 'package:baitap/level4/4.3.dart';
import 'package:baitap/level4/4.6.dart';
import 'package:baitap/level4/4.7.dart';
import 'package:baitap/level4/4.9.dart';
import 'package:baitap/level4/4.10.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Level4 extends StatefulWidget {
  const Level4({super.key});

  @override
  State<Level4> createState() => _Level4State();
}

class _Level4State extends State<Level4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 4"),
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
                      .push(MaterialPageRoute(builder: (context) => Bai3()));
                },
                child: Text("Bai 4")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai3()));
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
                      .push(MaterialPageRoute(builder: (context) => Bai3()));
                },
                child: Text("Bai 8")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai9()));
                },
                child: Text("Bai 9")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Bai10()));
                },
                child: Text("Bai 10")),
          ],
        ),
      ),
    );
  }
}
