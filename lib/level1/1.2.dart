import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai2 extends StatefulWidget {
  const Bai2({super.key});

  @override
  State<Bai2> createState() => _Bai2State();
}

class _Bai2State extends State<Bai2> {
  TextEditingController s = TextEditingController();
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: s,
            decoration: InputDecoration(
              hintText: "Nhap chuoi",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  result = s.text.length;
                });
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("String length"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Length of string"))
        ]),
      ),
    );
  }
}
