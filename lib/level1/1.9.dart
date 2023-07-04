import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai9 extends StatefulWidget {
  const Bai9({super.key});

  @override
  State<Bai9> createState() => _Bai9State();
}

class _Bai9State extends State<Bai9> {
  TextEditingController list = TextEditingController();
  int dem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 9"),
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
                  List<String>.from(list.text.split(" ").map((e) => e));

              dem = s.length;

              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("So tu trong chuoi"),
                        content: Text("$dem"),
                      ));
            }, //a
            child: Text("So tu"))
      ]),
    );
  }
}
