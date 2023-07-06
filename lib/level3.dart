import 'package:flutter/material.dart';
import 'package:baitap/level3/3.1.dart';
import 'package:baitap/level3/3.2.dart';
import 'package:baitap/level3/3.3.dart';
import 'package:baitap/level3/3.4.dart';
import 'package:baitap/level3/3.5.dart';
import 'package:baitap/level3/3.6.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Level3 extends StatefulWidget {
  const Level3({super.key});

  @override
  State<Level3> createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 3"),
      ),
      body: Container(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => bai1()));
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
            ElevatedButton(onPressed: () {}, child: Text("Bai 7")),
            ElevatedButton(onPressed: () {}, child: Text("Bai 8")),
            ElevatedButton(onPressed: () {}, child: Text("Bai 9")),
            ElevatedButton(onPressed: () {}, child: Text("Bai 10")),
          ],
        ),
      ),
    );
  }
}
