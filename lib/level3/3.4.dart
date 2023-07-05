import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai4 extends StatefulWidget {
  const Bai4({super.key});

  @override
  State<Bai4> createState() => _Bai4State();
}

class _Bai4State extends State<Bai4> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bai 4")),
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
              int max = 0;
              List<String> result = [];
              for (int i = 0; i < s.length; i++) {
                for (int j = i + 1; j < s.length; j++) {
                  int dem = 0;
                  for (int k = 0; k < s[i].length; k++) {
                    for (int m = 0; m < s[j].length; m++) {
                      if (s[i][k] == s[j][m]) {
                        dem++;
                      }
                    }
                  }
                  if (dem > max) {
                    max = dem;
                    result.clear();
                    result.add(s[i]);
                    result.add(s[j]);
                  }
                }
              }
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Hai ki tu giong nhau nhat"),
                        content: Text("$result"),
                      ));
            },
            child: Text("Nhan"))
      ]),
    );
  }
}
