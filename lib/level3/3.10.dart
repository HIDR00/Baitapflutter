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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 10"),
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
                for (int i = 0; i < s.length; i++) {
                  for (int j = i + 1; j < s.length; j++) {
                    if (s[i].length > s[j].length) {
                      String tmp = s[i];
                      s[i] = s[j];
                      s[j] = tmp;
                    }
                  }
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Day da sap xep"),
                          content: Text("$s"),
                        ));
              },
              child: Text("Nhan")),
        ],
      ),
    );
  }
}
