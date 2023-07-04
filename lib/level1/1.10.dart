import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai10 extends StatefulWidget {
  const Bai10({super.key});

  @override
  State<Bai10> createState() => _Bai10State();
}

class _Bai10State extends State<Bai10> {
  TextEditingController list = TextEditingController();
  int dem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 10"),
      ),
      body: Column(children: [
        TextField(
          controller: list,
          decoration: InputDecoration(
            hintText: "Nhap chuoi",
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              List<String> s =
                  List<String>.from(list.text.split(",").map((e) => e));
              for (var i in s) {
                if (i.contains("a")) {
                  dem++;
                }
              }

              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("So chuoi chua a"),
                        content: Text("$dem"),
                      ));
            },
            child: Text("An vao"))
      ]),
    );
  }
}
