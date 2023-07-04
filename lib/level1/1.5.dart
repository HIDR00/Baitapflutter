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
          decoration: InputDecoration(
            hintText: "Nhap day ki tu cach nhau boi dau ,",
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              List<String> s =
                  List<String>.from(list.text.split(",").map((e) => e));
              String mins = "";
              int min = s[0].length;
              for (var i in s) {
                if (i.length < min) {
                  min = i.length;
                  mins = i;
                }
              }
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("shortest string"),
                        content: Text("$mins"),
                      ));
            },
            child: Text("shortest string"))
      ]),
    );
  }
}
