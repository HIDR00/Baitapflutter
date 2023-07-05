import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai3 extends StatefulWidget {
  const Bai3({super.key});

  @override
  State<Bai3> createState() => _Bai3State();
}

class _Bai3State extends State<Bai3> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 3"),
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
                int max = 0;
                List<int> lis = [];
                for (int i = 0; i < numbers.length; i++) {
                  lis.add(1);
                }
                for (int i = 1; i < numbers.length; i++) {
                  for (int j = 0; j < i; j++) {
                    if (numbers[i] > numbers[j] && lis[i] < lis[j] + 1) {
                      lis[i] = lis[j] + 1;
                    }
                  }
                }
                for (int i = 0; i < numbers.length; i++) {
                  if (max < lis[i]) {
                    max = lis[i];
                  }
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Do dai chuoi tinh tien dai nhat"),
                          content: Text("$max"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
