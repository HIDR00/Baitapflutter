import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai1 extends StatefulWidget {
  const Bai1({super.key});

  @override
  State<Bai1> createState() => _Bai1State();
}

class _Bai1State extends State<Bai1> {
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: a,
            decoration:
                InputDecoration(hintText: "a", border: OutlineInputBorder()),
          ),
          TextField(
            controller: b,
            decoration:
                InputDecoration(hintText: "b", border: OutlineInputBorder()),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  result = int.parse(a.text) + int.parse(b.text);
                });
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Result"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Sum"))
        ]),
      ),
    );
  }
}
