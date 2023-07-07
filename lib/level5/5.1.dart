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
              hintText: "Nhap vao mot mang cach nhau moi dau ,",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<String> s =
                    List<String>.from(list.text.split(",").map((e) => e));
                List<String> result = [];
                for (int i = s.length - 1; i >= 0; i--) {
                  result.add(s[i]);
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Day dao nguoc"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
