import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai7 extends StatefulWidget {
  const Bai7({super.key});

  @override
  State<Bai7> createState() => _Bai7State();
}

class _Bai7State extends State<Bai7> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 7"),
      ),
      body: Column(children: [
        TextField(
          controller: list,
          decoration: InputDecoration(
            hintText: "nhap danh sach chuoi",
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              List<String> s =
                  List<String>.from(list.text.split(",").map((e) => e));
              for (int i = 0; i < s.length; i++) {
                for (int j = i + 1; j < s.length; j++) {
                  if (s[i].compareTo(s[j]) > 0) {
                    String tmp = s[i];
                    s[i] = s[j];
                    s[j] = tmp;
                  }
                }
              }
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Sap xep"),
                        content: Text("$s"),
                      ));
            },
            child: Text("Sap xep")),
      ]),
    );
  }
}
