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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 9"),
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
                List<String> s =
                    List<String>.from(list.text.split(",").map((e) => e));
                Map<String, int> result = {};
                for (var i in s) {
                  List<String> tmp =
                      List<String>.from(i.split(" ").map((e) => e));
                  result[tmp[0]] ??= 0;
                  result[tmp[0]] = result[tmp[0]]! + int.parse(tmp[2]);
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Tong"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Nhap"))
        ],
      ),
    );
  }
}
