import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai2 extends StatefulWidget {
  const Bai2({super.key});

  @override
  State<Bai2> createState() => _Bai2State();
}

class _Bai2State extends State<Bai2> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bai 2"),
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
                int max = s[0].length;
                String maxs = s[0];
                for (var i in s) {
                  if (i.length > max) {
                    max = i.length;
                    maxs = i;
                  }
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Chuoi  lon nhat"),
                          content: Text("$maxs"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
