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
      appBar: AppBar(
        title: Text("Bai 4"),
      ),
      body: Column(
        children: [
          TextField(
            controller: list,
            decoration: InputDecoration(
              hintText: "Nhap collection",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<String> s =
                    List<String>.from(list.text.split(",").map((e) => e));
                Map<String, String> result = {};
                for (int i = 0; i < s.length; i += 2) {
                  if (s[i].contains('y')) {
                    String tmp = s[i];
                    s[i] = s[i + 1];
                    s[i + 1] = tmp;
                  }
                  result[s[i]] = s[i + 1];
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("uniq ArrayObject"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
