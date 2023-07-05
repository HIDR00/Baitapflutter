import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class bai1 extends StatefulWidget {
  const bai1({super.key});

  @override
  State<bai1> createState() => _bai1State();
}

class _bai1State extends State<bai1> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bai 1"),
        ),
        body: Column(
          children: [
            TextField(
              controller: list,
              decoration: InputDecoration(
                hintText: "List of numbers",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  List<int> numbers = List<int>.from(
                      list.text.split(",").map((e) => int.parse(e)));
                  numbers.sort();
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("so nho thu 2"),
                            content: Text("${numbers[1]}"),
                          ));
                },
                child: Text("Nhan"))
          ],
        ));
  }
}
