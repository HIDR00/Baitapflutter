import 'package:baitap/level1.dart';
import 'package:baitap/level2.dart';
import 'package:baitap/level3.dart';
import 'package:baitap/level4.dart';
import 'package:baitap/level5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Bai Tap Thuat Toan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsetsDirectional.only(top: 100, start: 10, end: 10),
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Level1(),
                  ));
                },
                child: Text("Level 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Level2(),
                  ));
                },
                child: Text("Level 2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Level3(),
                  ));
                },
                child: Text("Level 3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Level4(),
                  ));
                },
                child: Text("Level 4")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Level5(),
                  ));
                },
                child: Text("Level 5")),
          ],
        ),
      ),
    );
  }
}
