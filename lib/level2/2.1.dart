import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai1 extends StatefulWidget {
  const Bai1({super.key});

  @override
  State<Bai1> createState() => _Bai1State();
}

class _Bai1State extends State<Bai1> {
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
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<int> numbers = List<int>.from(
                    list.text.split(",").map((e) => int.parse(e)));
                numbers.sort();
                int max2 = numbers[numbers.length - 2];
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("So lon thu 2"),
                          content: Text("$max2"),
                        ));
              },
              child: Text("Nhan")),
        ],
      ),
    );
  }
}
