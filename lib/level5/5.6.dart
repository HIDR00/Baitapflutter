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
        title: Text("bai 6"),
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
              String s = list.text;
              String result = "";
              s = s.trim();
              for (int i = 0; i < s.length; i++) {
                if (s[i] == " ") {
                  continue;
                }
                if (i > 0) {
                  if (s[i] != " " && s[i - 1] == " ") {
                    result += " ";
                  }
                }
                result += s[i];
              }
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Chuoi sau khi dinh dang"),
                        content: Text("${result}"),
                      ));
            },
            child: Text("Nhan"))
      ]),
    );
  }
}
