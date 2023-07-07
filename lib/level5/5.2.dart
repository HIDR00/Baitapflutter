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
  TextEditingController so = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nhan"),
      ),
      body: Column(
        children: [
          TextField(
            controller: list,
            decoration: InputDecoration(
              hintText: "Nhap mot mang",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: so,
            decoration: InputDecoration(
              hintText: "Nhap ki tu trong 1 mang",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<String> s1 =
                    List<String>.from(list.text.split(",").map((e) => e));
                int a = int.parse(so.text);
                List<List<String>> result = [[]];
                int j = 0;
                for (int i = 0; i < s1.length; i++) {
                  result[j].add(s1[i]);
                  if ((i + 1) % a == 0) {
                    result.add([]);
                    j++;
                  }
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Chuoi"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
