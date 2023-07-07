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
              hintText: "Nhap mot mang",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<String> s =
                    List<String>.from(list.text.split(",").map((e) => e));
                Set<String> result = {};
                for (var i in s) {
                  result.add(i);
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Chuoi"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
