import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai2 extends StatefulWidget {
  const Bai2({super.key});

  @override
  State<Bai2> createState() => _Bai2State();
}

class _Bai2State extends State<Bai2> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bai 2"),
        ),
        body: Column(
          children: [
            TextField(
              controller: list,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  List<int> numbers = List<int>.from(
                      list.text.split(",").map((e) => int.parse(e)));
                  int max = numbers[1] - numbers[0];
                  for (int i = 0; i < numbers.length; i++) {
                    for (int j = i + 1; j < numbers.length; j++) {
                      if (numbers[j] - numbers[i] > max) {
                        max = numbers[j] - numbers[i];
                      }
                    }
                  }
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Hieu lon nhat"),
                            content: Text("$max"),
                          ));
                },
                child: Text("Nhan"))
          ],
        ));
  }
}
