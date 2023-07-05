import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai3 extends StatefulWidget {
  const Bai3({super.key});

  @override
  State<Bai3> createState() => _Bai3State();
}

class _Bai3State extends State<Bai3> {
  TextEditingController list1 = TextEditingController();
  TextEditingController list2 = TextEditingController();
  List<String> a = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 3"),
      ),
      body: Column(
        children: [
          TextField(
            controller: list1,
            decoration: InputDecoration(
              hintText: "chuoi a",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: list2,
            decoration: InputDecoration(
              hintText: "chuoi b",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                for (int i = 0; i < list1.text.length; i++) {
                  for (int j = 0; j < list2.text.length; j++) {
                    if (a[i] == a[j]) {}
                  }
                }
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
