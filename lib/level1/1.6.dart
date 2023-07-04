import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai6 extends StatefulWidget {
  const Bai6({super.key});

  @override
  State<Bai6> createState() => _Bai6State();
}

class _Bai6State extends State<Bai6> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 6"),
      ),
      body: Column(children: [
        TextField(
          controller: list,
          decoration: InputDecoration(
            hintText: "Nhap danh sach so cach nhau boi dau ,",
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              List<int> numbers =
                  List<int>.from(list.text.split(",").map((e) => int.parse(e)));
              numbers.sort();
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Sap xep"),
                        content: Text("$numbers"),
                      ));
            },
            child: Text("Sap xep"))
      ]),
    );
  }
}
