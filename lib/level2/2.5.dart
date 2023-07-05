import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai5 extends StatefulWidget {
  const Bai5({super.key});

  @override
  State<Bai5> createState() => _Bai5State();
}

class _Bai5State extends State<Bai5> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 5"),
      ),
      body: Column(children: [
        TextField(
          controller: list,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
        ElevatedButton(
            onPressed: () {
              List<int> numbers =
                  List<int>.from(list.text.split(",").map((e) => int.parse(e)));
              int max = 0;
              for (int i = 0; i < numbers.length; i++) {
                int cur = 0;
                for (int j = i; j < numbers.length; j++) {
                  cur += numbers[j];
                  if (cur > max) {
                    max = cur;
                  }
                }
              }
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Tong lon nhat"),
                        content: Text("$max"),
                      ));
            },
            child: Text("Nhap"))
      ]),
    );
  }
}
