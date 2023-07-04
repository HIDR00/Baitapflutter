import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai3 extends StatefulWidget {
  const Bai3({super.key});

  @override
  State<Bai3> createState() => _Bai3State();
}

class _Bai3State extends State<Bai3> {
  TextEditingController a = TextEditingController();
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 3"),
      ),
      body: Column(children: [
        TextField(
          controller: a,
          decoration: InputDecoration(
            hintText: "A",
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                result = int.parse(a.text) * int.parse(a.text);
              });
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Square"),
                        content: Text("$result"),
                      ));
            },
            child: Text("Square"))
      ]),
    );
  }
}
