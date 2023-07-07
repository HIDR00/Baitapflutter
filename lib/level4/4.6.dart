import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai6 extends StatefulWidget {
  const Bai6({super.key});

  @override
  State<Bai6> createState() => _Bai6State();
}

class _Bai6State extends State<Bai6> {
  @override
  Widget build(BuildContext context) {
    TextEditingController list = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 6"),
      ),
      body: Column(children: [
        TextField(
          controller: list,
          decoration: InputDecoration(
            hintText: "Nhap mot chuoi so cach nhau boi dau ,",
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              List<int> numbers =
                  List<int>.from(list.text.split(",").map((e) => int.parse(e)));
              numbers.sort();
              int max = 0;
              if (numbers[0] * numbers[1] * numbers[numbers.length - 1] >
                  numbers[numbers.length - 1] *
                      numbers[numbers.length - 2] *
                      numbers[numbers.length - 3]) {
                max = numbers[0] * numbers[1] * numbers[numbers.length - 1];
              } else {
                max = numbers[numbers.length - 1] *
                    numbers[numbers.length - 2] *
                    numbers[numbers.length - 3];
              }
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Tich lon nhat"),
                        content: Text("${max}"),
                      ));
            },
            child: Text("Nhan")),
      ]),
    );
  }
}
