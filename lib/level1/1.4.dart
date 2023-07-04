import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai4 extends StatefulWidget {
  const Bai4({super.key});

  @override
  State<Bai4> createState() => _Bai4State();
}

class _Bai4State extends State<Bai4> {
  TextEditingController list = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bai 4"),
        ),
        body: Column(
          children: [
            TextField(
              controller: list,
              decoration: InputDecoration(
                hintText: "Nhap day so cach nhau boi dau ,",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  List<int> numbers = List<int>.from(
                      list.text.split(",").map((e) => int.parse(e)));
                  numbers.sort();
                  int max = numbers.last;
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("So lon nhat"),
                            content: Text("$max"),
                          ));
                },
                child: Text("Lon nhat"))
          ],
        ));
  }
}
