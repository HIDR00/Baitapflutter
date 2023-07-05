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
  List<int> result = [];
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
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<int> numbers = List<int>.from(
                    list.text.split(",").map((e) => int.parse(e)));
                for (var i in numbers) {
                  if (i % 3 == 0 && i % 5 == 0) {
                    result.add(i);
                  }
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("So chia het cho 3 va 5"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Nhan")),
        ],
      ),
    );
  }
}
