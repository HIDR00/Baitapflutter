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
      body: Column(children: [
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
              int maxlength = 0;
              for (int j = 0; j < s.first.length; j++) {
                for (int k = j; k < s.first.length; k++) {
                  int dem = 0;
                  for (int i = 1; i < s.length; i++) {
                    if (s[i].contains(s.first.substring(j, k))) {
                      dem++;
                    }
                  }
                  if (dem == s.length - 1 &&
                      s.first.substring(j, k).length > maxlength) {
                    maxlength = s.first.substring(j, k).length;
                  }
                }
              }

              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text(
                            "length of the longest substring that appears in every string in the list."),
                        content: Text("${maxlength}"),
                      ));
            },
            child: Text("Nhan")),
      ]),
    );
  }
}
