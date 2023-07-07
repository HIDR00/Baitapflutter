import 'package:flutter/material.dart';
import 'package:baitap/level5/5.1.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Level5 extends StatefulWidget {
  const Level5({super.key});

  @override
  State<Level5> createState() => _Level5State();
}

class _Level5State extends State<Level5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 5"),
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
            ElevatedButton(onPressed: () {}, child: Text("Bai 2")),
            ElevatedButton(onPressed: () {}, child: Text("Bai 3")),
            ElevatedButton(onPressed: () {}, child: Text("Bai 4")),
            ElevatedButton(onPressed: () {}, child: Text("Bai 5")),
            ElevatedButton(onPressed: () {}, child: Text("Bai 6")),
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
